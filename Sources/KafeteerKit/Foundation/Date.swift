//
//  Date.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/15/25.
//

import Foundation

public extension Date {
    var dateSwappingDayAndMonth: Date? {
        let calendar = Calendar.current
        var components = calendar.dateComponents([.year, .month, .day], from: self)
        guard let day = components.day, let month = components.month else { return nil }
        components.day = month
        components.month = day
        return calendar.date(from: components)
    }
}
