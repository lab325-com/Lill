//
//  DiseaseArchiveViewController.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy.
//

import UIKit

class DiseaseArchiveViewController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomContentView: UIView!
    @IBOutlet weak var diagnoseButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let cellIdentifier = "DiseaseArchiveCell"
    private lazy var presenter = DiseaseArchivePresenter(view: self)
    private var model: DiseaseArchiveModel?
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = false
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
    }
    
    private func setup(){
        tableView.alpha = 0.0
        bottomContentView.alpha = 0.0
        
        presenter.getDiseaseArchive()
        diagnoseButton.setTitle(RLocalization.disease_archive_button.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        navigationItem.title = RLocalization.disease_archive_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        self.bottomContentView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.bottomContentView.layer.cornerRadius = 24
        diagnoseButton.layer.cornerRadius = diagnoseButton.layer.frame.height / 2
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    //----------------------------------------------
    // MARK: - Action
    //----------------------------------------------
    
    @IBAction func diagnoseButtonPressed(_ sender: Any) {
        guard let meModel = KeychainService.standard.me else { return }
        if meModel.access.isPremium {
            PlantsRouter(presenter: navigationController).presentDiagnosis()
        } else {
            if let model = StoreKitManager.sharedInstance.checkSaleType(type: .diagnosis) {
                if let total = meModel.access.diagnosisTotal, total >= model.value {
                    switch model.sale {
                    case .saleTypeLifetime_50:
                        MenuRouter(presenter: navigationController).presentLifetimePayWall(controller: String(describing: DiseaseArchiveViewController.self))
                    case .saleTypeYearly_50:
                        MenuRouter(presenter: navigationController).presentYearPaywall(delegate: nil, controller: String(describing: DiseaseArchiveViewController.self))
                    case .saleTypeCombo, .saleTypeComboFull:
                        if let currentPopUp = PreferencesManager.sharedManager.currentPopUp {
                            MenuRouter(presenter: navigationController).presentComboPaywall(popupType: currentPopUp, controller: String(describing: DiseaseArchiveViewController.self))
                        }
                    default:
                        return
                    }
                } else {
                    PlantsRouter(presenter: navigationController).presentDiagnosis()
                }
            }
        }
    }
}

//----------------------------------------------
// MARK: - UITableViewDataSource
//----------------------------------------------

extension DiseaseArchiveViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.diagnoseArhive.plant.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier) as? DiseaseArchiveCell else { return UITableViewCell() }
        
        if let plant = model?.diagnoseArhive.plant[safe: indexPath.row] {
            cell.setupCell(plant: plant)
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let id = model?.diagnoseArhive.plant[safe: indexPath.row]?.plant?.id {
            PlantsRouter(presenter: navigationController).pushDetail(id: id)
        }
    }
}

//----------------------------------------------
// MARK: - DiseaseArchiveOutputProtocol
//----------------------------------------------

extension DiseaseArchiveViewController: DiseaseArchiveOutputProtocol {
    func success(model: DiseaseArchiveModel) {
        self.model = model
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.tableView.alpha = 1.0
            self?.bottomContentView.alpha = 1.0
        }
        
        tableView.reloadData()
    }
    
    func failure(error: String) {
        
    }
}
