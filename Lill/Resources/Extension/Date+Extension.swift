//
//  Date+Extension.swift
//  Lill
//
//  Created by Andrey S on 29.11.2021.
//

import Foundation

extension Date {
    func sendToServerFormat() -> String {
        let dateFormmater = DateFormatter()
        //dateFormmater.timeZone = TimeZone(identifier: "UTC")
        dateFormmater.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormmater.string(from: self)
    }
}
