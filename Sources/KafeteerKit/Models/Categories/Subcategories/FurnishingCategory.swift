//
//  FurnishingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Furnishing: String, CategoryRepresentable {
        public static var defaultValue: Self = .computer
        public static var categoryName = String(localized: "Furnishing")
        public var asPaymentCategory: PaymentCategory { .furnishing(self) }
        
        case furnishing
        case computer
        case phone
        case gadgets

        public enum Keyword: String, KeywordRepresentable {
            case furnishing
            case computer
            case phone
            case gadgets

            public var value: Furnishing {
                switch self {
                case .furnishing: .furnishing
                case .computer: .computer
                case .phone: .phone
                case .gadgets: .gadgets
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .furnishing: "curtains.closed" // 􁑸
            case .computer: "desktopcomputer" // 􀙗
            case .phone: "smartphone" // 􁤫
            case .gadgets: "headphones" // 􀑈
            }
        }
        
        public var name: String {
            switch self {
            case .furnishing: String(localized: "Furnishing")
            case .computer: String(localized: "Computer")
            case .phone: String(localized: "Phone")
            case .gadgets: String(localized: "Gadgets")
            }
        }
        
    }
}
