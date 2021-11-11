//
//  AddPlantTimeController.swift
//  Lill
//
//  Created by Andrey S on 11.11.2021.
//

import UIKit

class AddPlantTimeController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topView: ShadowView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    let cellIdentifier = "AddPlantTimeCell"
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        transparentNavigationBar = true
        backgroundNavigationColor = UIColor.white
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()

        setup()
    }

    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        let cancel = UIBarButtonItem(title: RLocalization.uniques_cover_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: self, action: #selector(playTapped))
        navigationItem.rightBarButtonItems = [cancel]
        
        topView.layer.cornerRadius = 24.0
        topView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        navigationItem.title = RLocalization.uniques_cover_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @objc func playTapped() {
        dismiss(animated: true)
    }
}

//----------------------------------------------
// MARK: - UITableViewDataSource
//----------------------------------------------

extension AddPlantTimeController: UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //let headerView = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: self.view.frame.width, height: 50)))
        let label = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: self.view.frame.width, height: 80)))
        label.text = "Please Setup your Care for new Plant"
        label.textAlignment = .center
        //headerView.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        return label
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier) as? AddPlantTimeCell else { return UITableViewCell() }
        
            return cell
    }
}
