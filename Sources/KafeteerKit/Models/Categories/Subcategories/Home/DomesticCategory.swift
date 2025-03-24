//
//  DomesticCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Domestic: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .home
        public static var categoryIcon: Self = .domesticService
        public static var categoryName = String(localized: "Domestic Service", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .domestic(self) }
        
        case domesticService
        case chef
        case laundry
        case lawnCare
        case securityGuard

        public enum Keyword: String, KeywordRepresentable {
            case domesticService
            case cleaning
            case chef
            case cooking
            case laundry
            case lawnCare
            case landscaping
            case securityGuard
            case security

            public var value: Domestic {
                switch self {
                case .domesticService, .cleaning: .domesticService
                case .chef, .cooking: .chef
                case .laundry: .laundry
                case .lawnCare, .landscaping: .lawnCare
                case .securityGuard, .security: .securityGuard
                }
            }
        }

        public var iconName: String {
            switch self {
            case .domesticService: "bubbles.and.sparkles" // 􁒉
            case .chef: "cooktop" // 􁕠
            case .laundry: "drop.keypad.rectangle" // 􁓀
            case .lawnCare: "sprinkler.and.droplets" // 􁒼
            case .securityGuard: "lock.fill" // 􀎡
            }
        }
        
        public var name: String {
            switch self {
            case .domesticService: String(localized: "Cleaning", bundle: .module)
            case .chef: String(localized: "Chef", bundle: .module)
            case .laundry: String(localized: "Laundry", bundle: .module)
            case .lawnCare: String(localized: "Lawn Care", bundle: .module)
            case .securityGuard: String(localized: "Security Guard", bundle: .module)
            }
        }
    }
}
