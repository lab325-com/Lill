//
//  ScheduleColapsView.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import UIKit

class ScheduleColapsView: UIView, LoadFromXibProtocol {

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
        
    }

}
