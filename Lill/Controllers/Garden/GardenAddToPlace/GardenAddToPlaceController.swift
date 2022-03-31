//
//  GardenAddToPlaceController.swift
//  Lill
//
//  Created by Andrey S on 13.01.2022.
//

import UIKit

@objc protocol GardenAddToPlaceDelegate: AnyObject {
    func gardenAddToPlaceSuccessAdd(controller: GardenAddToPlaceController)
    @objc optional func selectedGarden(gardenId: String)
}

class GardenAddToPlaceController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var heightTableLayout: NSLayoutConstraint!
    
    @IBOutlet weak var bottomLayout: NSLayoutConstraint!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    let gardenCellIdentifier = String(describing: GardenAddToPlaceCell.self)
    private lazy var presenter = GardenAddToPlacePresenter(view: self)
    weak var delegate: GardenAddToPlaceDelegate?
    private let plantId: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: GardenAddToPlaceDelegate, plantId: String) {
        self.delegate = delegate
        self.plantId = plantId
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()

        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animate(isHidden: false, completion: {})
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        bottomLayout.constant = -UIScreen.main.bounds.size.height
        
        tableView.register(UINib(nibName: gardenCellIdentifier, bundle: nil), forCellReuseIdentifier: gardenCellIdentifier)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
        
        let countGarden = CGFloat(KeychainService.standard.me?.gardens.count ?? 0)
        if (UIScreen.main.bounds.size.height - 240) > (82 * countGarden) {
            heightTableLayout.constant = 82 * countGarden
        } else {
            heightTableLayout.constant = (UIScreen.main.bounds.size.height - 240)
        }
        
        mainLabel.text = RLocalization.garden_add_to_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subtitleLabel.text = RLocalization.garden_add_to_subtitle.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        orLabel.text = RLocalization.garden_add_to_or.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        addButton.setTitle(RLocalization.garden_add_to_add.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    private func animate(isHidden: Bool, completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: isHidden ? 0.0 : 0.7)
            self.bottomLayout.constant = isHidden ? -UIScreen.main.bounds.size.height : 23
            self.view.layoutIfNeeded()
        } completion: { result in
            completion()
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionAddToNew(_ sender: UIButton) {
        if let totalGardens = KeychainService.standard.me?.totalGardens, totalGardens > 0 && KeychainService.standard.me?.access.subscription?.name == nil {
            MenuRouter(presenter: navigationController).presentYearPaywall(delegate: nil, controller: String(describing: PlantsController.self))
        } else {
            GardenRouter(presenter: navigationController).presentGardenCreateName(delegate: self)
        }
    }
    
    @IBAction func actionClose(_ sender: UIButton) {
        animate(isHidden: true) {
            self.dismiss(animated: true)
        }
    }
}

//----------------------------------------------
// MARK: - UITableViewDelegate, UITableViewDataSource
//----------------------------------------------

extension GardenAddToPlaceController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return KeychainService.standard.me?.gardens.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: gardenCellIdentifier) as? GardenAddToPlaceCell else { return UITableViewCell() }
        
        if let model = KeychainService.standard.me?.gardens[safe: indexPath.row] {
            cell.setup(model: model)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let gardenId = KeychainService.standard.me?.gardens[safe: indexPath.row]?.id {
            if plantId.isEmpty {
                delegate?.selectedGarden?(gardenId: gardenId)
            } else {
                presenter.addPlantToGarden(plantId: plantId, gardenId: gardenId)
            }
        }
    }
}

//----------------------------------------------
// MARK: - GardenAddToPlaceOutputProtocol
//----------------------------------------------

extension GardenAddToPlaceController: GardenAddToPlaceOutputProtocol {
    func successAddToGarden() {
        animate(isHidden: true) {
            self.delegate?.gardenAddToPlaceSuccessAdd(controller: self)
            self.dismiss(animated: true)
        }
    }
}

//----------------------------------------------
// MARK: - GardenCreateNameDelegate
//----------------------------------------------

extension GardenAddToPlaceController: GardenCreateNameDelegate {
    func didCreateName(text: String) {
        GardenRouter(presenter: navigationController).presentGardenCreateCover(gardenName: text, delegate: self)
    }
}

//----------------------------------------------
// MARK: - GardenCreateCoverDelegate
//----------------------------------------------

extension GardenAddToPlaceController: GardenCreateCoverDelegate {
    func didCreateGarden(model: GardenModel) {
        tableView.reloadData()
        
        let countGarden = CGFloat(KeychainService.standard.me?.gardens.count ?? 0)
        if (UIScreen.main.bounds.size.height - 240) > (82 * countGarden) {
            heightTableLayout.constant = 82 * countGarden
        } else {
            heightTableLayout.constant = (UIScreen.main.bounds.size.height - 240)
        }
        
        view.layoutIfNeeded()
        
        presenter.addPlantToGarden(plantId: plantId, gardenId: model.id)
    }
}
