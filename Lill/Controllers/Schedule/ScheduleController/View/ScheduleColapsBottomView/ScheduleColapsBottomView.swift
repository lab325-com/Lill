//
//  ScheduleColapsBottomView.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import UIKit

protocol ScheduleColapsBottomDelegate: AnyObject {
    func scheduleColapsBottomAllDone(view: ScheduleColapsBottomView, model: ScheduleMainModel)
}

class ScheduleColapsBottomView: UIView, LoadFromXibProtocol {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var doneButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    var model: ScheduleMainModel?
    weak var delegate: ScheduleColapsBottomDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
        mainView.layer.cornerRadius = 27
        mainView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        doneButton.setTitle(RLocalization.scheldure_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }

    func setupView(model: ScheduleMainModel, isHiddenButton: Bool) {
        doneButton.isHidden = isHiddenButton
        self.model = model
    }
    
    @IBAction func actionDoneAll(_ sender: UIButton) {
        guard let model = model else {
            return
        }

        delegate?.scheduleColapsBottomAllDone(view: self, model: model)
    }
}
