//
//  PaywallShortController.swift
//  Lill
//
//  Created by Andrey S on 21.06.2022.
//

import UIKit

class PaywallShortController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var heightImageView: NSLayoutConstraint!
    
    @IBOutlet weak var scollView: UIScrollView!
    
    @IBOutlet weak var weekTialView: UIView!
    @IBOutlet weak var yearView: UIView!
    
    @IBOutlet weak var weakPrice: UILabel!
    @IBOutlet weak var weakTialLabel: UILabel!
    @IBOutlet weak var weekActivity: UIActivityIndicatorView!
    
    @IBOutlet weak var yearActivity: UIActivityIndicatorView!
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var yearPriceLabel: UILabel!
    
    @IBOutlet weak var weekButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private propety
    //----------------------------------------------
    
    private let week = "com.lill.subscription.weekly"
    private let year = "com.lill.subscription.yearly"
    private lazy var presenter = SubscribePresenter(view: self)
    
    private let controller: String
    private let isWeek: Bool
    
    weak var delegate: PaywallDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(isWeek: Bool, delegate: PaywallDelegate?, controller: String) {
        self.isWeek = isWeek
        self.delegate = delegate
        self.controller = controller
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        weekTialView.isHidden = !isWeek
        yearView.isHidden = isWeek
        
//        DispatchQueue.main.async {
//            self.heightImageView.constant = self.scollView.contentSize.height + 20
//        }
        
        weakPrice.isHidden = true
        weakTialLabel.isHidden = true
        
        discountPriceLabel.isHidden = true
        yearPriceLabel.isHidden = true
        
        presenter.retriveProduct(id: [week, year])
        
        weekTialView.layer.cornerRadius = 24
        weekTialView.layer.borderWidth = 3
        weekTialView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        yearView.layer.cornerRadius = 24
        yearView.layer.borderWidth = 3
        yearView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionClose(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func actionBuyWeek(_ sender: UIButton) {
        presenter.purchase(id: week, controller: controller) { [weak self] result, message in
            guard let `self` = self else { return }
            if result {
                self.delegate?.paywallSuccess(controller: self)
                self.dismiss(animated: true)
            }
        }
    }
    
    @IBAction func actionYear(_ sender: UIButton) {
        presenter.purchase(id: year, controller: controller) { [weak self] result, message in
            guard let `self` = self else { return }
            if result {
                self.delegate?.paywallSuccess(controller: self)
                self.dismiss(animated: true)
            }
        }
    }
    
    @IBAction func actionTerms(_ sender: UIButton) {
        if let url = URL(string: "https://mob325.com/lill/terms_and_conditions.html") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func actionPivacy(_ sender: UIButton) {
        if let url = URL(string: "https://mob325.com/lill/privacy_policy.html") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func actionRestore(_ sender: UIButton) {
        presenter.restore { [weak self] result in
            if result {
                self?.dismiss(animated: true)
            }
        }
    }
    
}

//----------------------------------------------
// MARK: - SubscribeOutputProtocol
//----------------------------------------------

extension PaywallShortController: SubscribeOutputProtocol {
    func successRetrive() {
        yearActivity.isHidden = true
        discountPriceLabel.isHidden = false
        yearPriceLabel.isHidden = false
        
        if let product = presenter.paymentsInfo.first(where: {$0.product == week}) {
            weekActivity.isHidden = true
            weakPrice.isHidden = false
            weakTialLabel.isHidden = false
            
            weakPrice.text = product.prettyPrice
            if let trial = product.daysTrial {
                weakTialLabel.text = "with \(trial) free days!"
                weekButton.setTitle("Try it for free", for: .normal)
            } else {
                weakTialLabel.text = ""
                weekButton.setTitle("Subscribe", for: .normal)
            }
        }
        
        if let product = presenter.paymentsInfo.first(where: {$0.product == year}) {
            let discount = 2 * Int(product.price)
            discountPriceLabel.text = "\(product.currencySymbol ?? "$") \(discount).99 / Year"
            
            yearPriceLabel.text = "\(product.prettyPrice) / Year"
        }
    }
    
    func failure(error: String) {
        
    }
}
