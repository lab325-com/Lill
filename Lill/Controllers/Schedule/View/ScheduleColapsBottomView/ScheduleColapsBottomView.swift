//
//  ScheduleColapsBottomView.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import UIKit

class ScheduleColapsBottomView: UIView, LoadFromXibProtocol {
    
    @IBOutlet weak var mainView: UIView!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
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
    }

}
