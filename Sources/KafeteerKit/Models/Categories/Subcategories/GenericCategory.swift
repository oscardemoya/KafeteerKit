//
//  GenericCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Generic: String, CategoryRepresentable {
        case payment
        case document
        case recurring
        case heart
        case star
        
        public enum Keyword: String, CaseInsensitive {
            case payment
            case document
            case recurring
            case heart
            case star
            
            public var value: Generic {
                switch self {
                case .payment: .payment
                case .document: .document
                case .recurring: .recurring
                case .heart: .heart
                case .star: .star
                }
            }
        }

        public var iconName: String {
            switch self {
            case .payment: "creditcard.circle.fill" // 􀒰
            case .document: "doc.text" // 􀈿
            case .recurring: "dollarsign.arrow.circlepath" // 􁎣
            case .heart: "heart" // 􀊴
            case .star: "star" // 􀋂
            }
        }
        
        public var name: String {
            switch self {
            case .payment: String(localized: "Default")
            case .document: String(localized: "Document")
            case .recurring: String(localized: "Recurring")
            case .heart: String(localized: "Heart")
            case .star: String(localized: "Star")
            }
        }
        
        public var keywords: [String] {
            [rawValue]
        }
    }
}
