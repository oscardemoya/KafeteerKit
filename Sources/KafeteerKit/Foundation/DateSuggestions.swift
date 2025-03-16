//
//  DateSuggestions.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/15/25.
//

import Foundation

public struct DateSuggestions {
    public var date1: Date
    public var date2: Date
    
    public init?(from text: String) {
        guard let date1 = TextChecker.detectorData(from: text).date else { return nil }
        guard let date2 = date1.dateSwappingDayAndMonth else { return nil }
        self.date1 = date1
        self.date2 = date2
    }
}
