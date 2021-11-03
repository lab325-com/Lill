
import Foundation
import UIKit
import SwiftEntryKit

protocol GreatCongradsViewDelegate: AnyObject {
    func great()
}

class CongradsView: UIView {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var infoLabel: UILabel!
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
        titleLabel.text = "Wefergerg"
        infoLabel.text = "Tlkjvlkjfsv lksdflskdf jlsdkjls"
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    class func defaultView() -> CongradsView {
        let className = String(describing: CongradsView.self)
        let congradsView = Bundle.main.loadNibNamed(className, owner: self, options: nil)!.first as! CongradsView

        return congradsView
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func greatAction(_ sender: Any) {
        SwiftEntryKit.dismiss()
    }
}
