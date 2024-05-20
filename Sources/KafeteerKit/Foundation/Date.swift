//
//  Date.swift
//  
//
//  Created by Oscar De Moya on 18/05/24.
//

import Foundation

public extension Date {
    static var today: Date { Calendar.current.startOfDay(for: .now) }
}
