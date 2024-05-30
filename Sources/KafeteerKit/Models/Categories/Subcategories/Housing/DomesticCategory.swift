//
//  DomesticCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Domestic: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .housing
        public static var categoryIcon: Self = .domesticService
        public static var categoryName = String(localized: "Domestic Service")
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
            case .lawnCare: "tree" // 􁝯
            case .securityGuard: "lock.fill" // 􀎡
            }
        }
        
        public var name: String {
            switch self {
            case .domesticService: String(localized: "Cleaning")
            case .chef: String(localized: "Chef")
            case .laundry: String(localized: "Laundry")
            case .lawnCare: String(localized: "Lawn Care")
            case .securityGuard: String(localized: "Security Guard")
            }
        }
    }
}
