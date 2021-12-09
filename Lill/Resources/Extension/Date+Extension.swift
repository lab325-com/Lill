//
//  Date+Extension.swift
//  Lill
//
//  Created by Andrey S on 29.11.2021.
//

import Foundation

extension Date {
    func sendToServerFormat() -> String {
        
        let calendar = Calendar.current

        let hour = calendar.component(.hour, from: self)
        let minutes = calendar.component(.minute, from: self)
        let seconds = calendar.component(.second, from: self)
        
        return "\(hour):\(minutes):\(seconds)"
        
        //let dateFormmater = DateFormatter()
        //dateFormmater.timeZone = TimeZone(identifier: "UTC")
        //dateFormmater.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        //return dateFormmater.string(from: self)
    }
}
