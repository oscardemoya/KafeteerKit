//
//  FurnitureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

public extension PaymentCategory {
    public enum Electronics: String, CategoryRepresentable {
        public static var defaultValue: Self = .computer
        public static var categoryName = String(localized: "Electronics")
        public var asPaymentCategory: PaymentCategory { .electronics(self) }
        
        case computer
        case smartphone
        case gadgets
        case television
        case videoProjector
        case wifiRouter

        public enum Keyword: String, KeywordRepresentable {
            case computer
            case smartphone
            case gadgets
            case television
            case tv
            case videoProjector
            case wifiRouter

            public var value: Electronics {
                switch self {
                case .computer: .computer
                case .smartphone: .smartphone
                case .gadgets: .gadgets
                case .television, .tv: .television
                case .videoProjector: .videoProjector
                case .wifiRouter: .wifiRouter
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .computer: "desktopcomputer" // 􀙗
            case .smartphone: "smartphone" // 􁤫
            case .gadgets: "headphones" // 􀑈
            case .television: "tv" // 􀎲
            case .videoProjector: "videoprojector" // 􁒮
            case .wifiRouter: "wifi.router" // 􁓣
            }
        }
        
        public var name: String {
            switch self {
            case .computer: String(localized: "Computer")
            case .smartphone: String(localized: "Smartphone")
            case .gadgets: String(localized: "Gadgets")
            case .television: String(localized: "TV")
            case .videoProjector: String(localized: "Video Projector")
            case .wifiRouter: String(localized: "WiFi Router")
            }
        }
    }
}
