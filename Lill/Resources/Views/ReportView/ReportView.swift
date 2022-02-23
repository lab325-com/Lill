
import Foundation
import UIKit
import SwiftEntryKit

class ReportView: UIView {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var greatButton: UIButton!

    //----------------------------------------------
    // MARK: - Override
    //----------------------------------------------
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func setup() {
        titleLabel.text = RLocalization.report_view_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subtitleLabel.text = RLocalization.report_view_subtitle.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        greatButton.setTitle(RLocalization.report_view_great.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    class func defaultView() -> ReportView {
        let className = String(describing: ReportView.self)
        let reportView = Bundle.main.loadNibNamed(className, owner: self, options: nil)!.first as! ReportView
        
        return reportView
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func greatAction(_ sender: Any) {
        SwiftEntryKit.dismiss()
    }
}
