//
//  GardenAddToPlaceController.swift
//  Lill
//
//  Created by Andrey S on 13.01.2022.
//

import UIKit

class GardenAddToPlaceController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var heightTableLayout: NSLayoutConstraint!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    let gardenCellIdentifier = String(describing: GardenAddToPlaceCell.self)
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup() {
        animate(isHidden: false, completion: {})
        tableView.register(UINib(nibName: gardenCellIdentifier, bundle: nil), forCellReuseIdentifier: gardenCellIdentifier)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
        
        let countGarden = CGFloat(KeychainService.standard.me?.Gardens.count ?? 0)
        if (UIScreen.main.bounds.size.height - 220) > (82 * countGarden) {
            heightTableLayout.constant = 82 * countGarden
        } else {
            heightTableLayout.constant = (UIScreen.main.bounds.size.height - 220)
        }
    }
    
    private func animate(isHidden: Bool, completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.4) { [weak self] in
            guard let `self` = self else { return }
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: isHidden ? 0.0 : 0.7)
            //self.centerViewLayout.constant = isHidden ? 1500 : 0
            self.view.layoutIfNeeded()
        } completion: { result in
            completion()
        }
    }
}

//----------------------------------------------
// MARK: - UITableViewDelegate, UITableViewDataSource
//----------------------------------------------

extension GardenAddToPlaceController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return KeychainService.standard.me?.Gardens.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: gardenCellIdentifier) as? GardenAddToPlaceCell else { return UITableViewCell() }
        
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
