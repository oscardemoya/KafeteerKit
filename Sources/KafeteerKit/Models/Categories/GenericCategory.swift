//
//  GenericCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Generic: String, CategoryRepresentable {
        case `default`
        case document
        case recurring
        case heart
        case star

        public var iconName: String {
            switch self {
            case .default: "scroll" // 􀤏
            case .document: "doc.text" // 􀈿
            case .recurring: "dollarsign.arrow.circlepath" // 􁎣
            case .heart: "heart" // 􀊴
            case .star: "star" // 􀋂
            }
        }
        
        public var name: String {
            switch self {
            case .default: String(localized: LocalizedStringResource("Default"))
            case .document: String(localized: LocalizedStringResource("Document"))
            case .recurring: String(localized: LocalizedStringResource("Recurring"))
            case .heart: String(localized: LocalizedStringResource("Heart"))
            case .star: String(localized: LocalizedStringResource("Star"))
            }
        }
    }
}
