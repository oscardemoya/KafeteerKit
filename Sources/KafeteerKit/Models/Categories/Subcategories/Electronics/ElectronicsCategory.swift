//
//  FurnitureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

public extension PaymentCategory {
    enum Electronics: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .electronics
        public static var categoryIcon: Self = .computer
        public static var categoryName = String(localized: "Electronics", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .electronics(self) }
        
        case computer
        case peripheral
        case cable
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
            case cable
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
                case .cable: .cable
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
            case .cable: "cable.connector" // 􀺦
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
            case .computer: String(localized: "Computer", bundle: .module)
            case .peripheral: String(localized: "Peripheral", bundle: .module)
            case .cable: String(localized: "Cable", bundle: .module)
            case .smartphone: String(localized: "Smartphone", bundle: .module)
            case .television: String(localized: "TV", bundle: .module)
            case .videoGameConsole: String(localized: "Gaming Console", bundle: .module)
            case .speakers: String(localized: "Speakers", bundle: .module)
            case .gadgets: String(localized: "Gadgets", bundle: .module)
            case .videoProjector: String(localized: "Video Projector", bundle: .module)
            case .wifiRouter: String(localized: "WiFi Router", bundle: .module)
            }
        }
    }
}
