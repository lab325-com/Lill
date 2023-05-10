//
//  SubscribeYearController.swift
//  Lill
//
//  Created by mob325 on 04.02.2022.
//

import UIKit

class SubscribeYearController: BaseController {
    
    @IBOutlet weak var becomePremiumLabel: UILabel!
    @IBOutlet weak var oneYearLabel: UILabel!
    @IBOutlet weak var saveOffLabel: UILabel!
    @IBOutlet weak var unlimitedLabel: UILabel!
    @IBOutlet weak var planIdentifierLabel: UILabel!
    
    @IBOutlet weak var subscribeButton: UIButton!
    
    @IBOutlet weak var termsOfUserButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    @IBOutlet weak var restoreButton: UIButton!
    
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = SubscribeYearPresenter(view: self)
    private let id: Set<String> = ["com.lill.subscription.yearly"]
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup() {
        
        presenter.getSignature()
        
        discountPriceLabel.alpha = 0.0
        currentPriceLabel.alpha = 0.0
        
        becomePremiumLabel.text = RLocalization.subscribe_year_premium.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        oneYearLabel.text = RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        saveOffLabel.text = RLocalization.subscribe_year_save.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        unlimitedLabel.text = RLocalization.subscribe_year_unlimited.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        planIdentifierLabel.text = RLocalization.subscribe_year_plant_identification.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        subscribeButton.setTitle(RLocalization.subscribe_year_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        termsOfUserButton.setTitle(RLocalization.subscription_terms.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        privacyButton.setTitle(RLocalization.subscription_privacy.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        restoreButton.setTitle(RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        presenter.retriveProduct(id: id)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func actionSubscription(_ sender: UIButton) {
        presenter.purchase(id: id.first!)
    }
    
    @IBAction func actionRestore(_ sender: UIButton) {
        presenter.restore { [weak self] result in
            
        }
    }
    
    @IBAction func actionTerms(_ sender: UIButton) {
        if let url = URL(string: "https://mob325.com/lill/terms_and_conditions.html") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func actionPrivacy(_ sender: UIButton) {
        if let url = URL(string: "https://mob325.com/lill/privacy_policy.html") {
            UIApplication.shared.open(url)
        }
    }
}

//----------------------------------------------
// MARK: - SubscribeOutputProtocol
//----------------------------------------------

extension SubscribeYearController: SubscribeYearOutputProtocol {
    func success() {
        dismiss(animated: true, completion: nil)
    }
    
    func successRetrive() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }
            
            self.activityIndicator.isHidden = true
            self.discountPriceLabel.alpha = 1.0
            self.currentPriceLabel.alpha = 1.0
            
            self.discountPriceLabel.text = self.presenter.paymentsInfo.first?.prettyPrice ?? ""
            
            self.currentPriceLabel.text = self.presenter.discountInfo.first?.prettyPrice ?? ""
        }
    }
    
    func failure(error: String) {
        
    }
}
