//
//  Double.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/21/25.
//

import Foundation

public extension Double {
    var compact: String {
        switch self {
        case 1_000_000...:
            String(format: "%.1fM", self / 1_000_000).replacingOccurrences(of: ".0", with: "")
        case 1_000...:
            String(format: "%.1fK", self / 1_000).replacingOccurrences(of: ".0", with: "")
        default:
            String(Int(self))
        }
    }
}
