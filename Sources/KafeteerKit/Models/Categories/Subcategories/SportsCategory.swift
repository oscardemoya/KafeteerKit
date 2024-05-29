//
//  SportsCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Sports: String, CategoryRepresentable {
        public static var categoryIcon: Self = .soccer
        public static var categoryName = String(localized: "Sports")
        public var asPaymentCategory: PaymentCategory { .sports(self) }
        
        case soccer
        case basketball
        case baseball
        case football
        case tennis
        case volleyball
        case hockey
        case cricket

        public enum Keyword: String, KeywordRepresentable {
            case soccer
            case basketball
            case baseball
            case football
            case tennis
            case volleyball
            case hockey
            case cricket

            public var value: Sports {
                switch self {
                case .soccer: .soccer
                case .basketball: .basketball
                case .baseball: .baseball
                case .football: .football
                case .tennis: .tennis
                case .volleyball: .volleyball
                case .hockey: .hockey
                case .cricket: .cricket
                }
            }
        }

        public var iconName: String {
            switch self {
            case .soccer: "soccerball" // 􀦥
            case .basketball: "basketball" // 􁗉
            case .baseball: "baseball" // 􀡵
            case .football: "basketball" // 􁗉
            case .tennis: "tennisball" // 􁜦
            case .volleyball: "volleyball" // 􁜪
            case .hockey: "hockey.puck" // 􁛽
            case .cricket: "cricket.ball" // 􁜁
            }
        }
        
        public var name: String {
            switch self {
            case .soccer: String(localized: "Soccer")
            case .basketball: String(localized: "Basketball")
            case .baseball: String(localized: "Baseball")
            case .football: String(localized: "Football")
            case .tennis: String(localized: "Tennis")
            case .volleyball: String(localized: "Volleyball")
            case .hockey: String(localized: "Hockey")
            case .cricket: String(localized: "Cricket")
            }
        }
    }
}
