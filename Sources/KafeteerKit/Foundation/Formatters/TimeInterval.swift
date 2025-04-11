//
//  TimeInterval.swift
//  Toolkit
//
//  Created by Oscar De Moya on 12/4/24.
//

import Foundation

public extension TimeInterval {
    var date: Date { Date(timeIntervalSince1970: self) }
    
    var hourAndMinuteString: String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .full
        return formatter.string(from: self) ?? ""
    }
}

public extension Int {
    var timeIntervalDate: Date { Date(timeIntervalSince1970: TimeInterval(self)) }
}
