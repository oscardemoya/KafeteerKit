//
//  FurnitureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

public extension PaymentCategory {
    public enum Electronics: String, CategoryRepresentable {
        public static var categoryIcon: Self = .computer
        public static var categoryName = String(localized: "Electronics")
        public var asPaymentCategory: PaymentCategory { .electronics(self) }
        
        case computer
        case peripheral
        case smartphone
        case television
        case videoGameConsole
        case speakers
        case gadgets
        case videoProjector
        case wifiRouter

        public enum Keyword: String, KeywordRepresentable {
            case computer
            case peripheral
            case smartphone
            case television
            case tv
            case videoGameConsole
            case speakers
            case gadgets
            case console
            case videoProjector
            case wifiRouter

            public var value: Electronics {
                switch self {
                case .computer: .computer
                case .peripheral: .peripheral
                case .smartphone: .smartphone
                case .television, .tv: .television
                case .videoGameConsole, .console: .videoGameConsole
                case .speakers: .speakers
                case .gadgets: .gadgets
                case .videoProjector: .videoProjector
                case .wifiRouter: .wifiRouter
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .computer: "desktopcomputer" // 􀙗
            case .peripheral: "computermouse" // 􀺣
            case .smartphone: "smartphone" // 􁤫
            case .television: "tv" // 􀎲
            case .videoGameConsole: "arcade.stick.console" // 􂁠
            case .speakers: "hifispeaker" // 􀝎
            case .gadgets: "headphones" // 􀑈
            case .videoProjector: "videoprojector" // 􁒮
            case .wifiRouter: "wifi.router" // 􁓣
            }
        }
        
        public var name: String {
            switch self {
            case .computer: String(localized: "Computer")
            case .peripheral: String(localized: "Peripheral")
            case .smartphone: String(localized: "Smartphone")
            case .television: String(localized: "TV")
            case .videoGameConsole: String(localized: "Gaming Console")
            case .speakers: String(localized: "Speakers")
            case .gadgets: String(localized: "Gadgets")
            case .videoProjector: String(localized: "Video Projector")
            case .wifiRouter: String(localized: "WiFi Router")
            }
        }
    }
}
