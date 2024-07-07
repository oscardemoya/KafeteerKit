//
//  File.swift
//  
//
//  Created by Oscar De Moya on 19/05/24.
//

import Foundation

extension String {
    var currencyValues: [(separator: Separator, symbol: String, amount: String)] {
        Separator.allCases.compactMap { separator in
            var regex: Regex<(Substring, symbol: Substring, amount: Substring, Substring?, Substring?, Substring?)>
            switch separator {
            case .dot:
                regex = #/(?<symbol>[$|€|£|¥|₣|₹])(?<amount>\s?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9][0-9])?)/#
            case .comma:
                regex = #/(?<symbol>[$|€|£|¥|₣|₹])(?<amount>\s?([0-9]{1,3}\.([0-9]{3}\.)*[0-9]{3}|[0-9]+)?(,[0-9][0-9])?)/#
            }
            regex = regex.ignoresCase().dotMatchesNewlines()
            return matches(of: regex).compactMap {
                (separator: separator, symbol: String($0.output.symbol), amount: String($0.output.amount))
            }.first
        }
    }
}

public enum Separator: String, CaseIterable {
    case dot = "."
    case comma = ","
    
    var groupingSeparator: Separator {
        switch self {
        case .dot: .comma
        case .comma: .dot
        }
    }
}
