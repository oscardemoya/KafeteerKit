//
//  File.swift
//  
//
//  Created by Oscar De Moya on 19/05/24.
//

import Foundation

extension String {
    var currency: String? {
        matches(of: Regex.currencyAmount).compactMap { match -> String? in
            String(match.output.currency)
        }.first
    }
}

// TODO: Detect repeat interval
enum Regex {
    static let decimalSeparator = Locale.current.decimalSeparator
    static let currencyAmount = decimalSeparator == "." ?
    #/(?<currency>[$|£|€|¥]\s?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9][0-9])?)/# :
    #/(?<currency>[$|£|€|¥]\s?([0-9]{1,3}\.([0-9]{3}\.)*[0-9]{3}|[0-9]+)?(,[0-9][0-9])?)/#
        .ignoresCase()
        .dotMatchesNewlines()
}
