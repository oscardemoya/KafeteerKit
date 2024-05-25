//
//  HomeCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Home: String, CategoryRepresentable {
        public static var defaultValue: Self = .mortgage
        public static var categoryName = String(localized: "Home")
        public var asPaymentCategory: PaymentCategory { .home(self) }
        
        case groceries
        case homeSupplies
        case rent
        case mortgage
        case condoFee
        case security
        case domesticService
        case chef
        case laundry
        case lawnCare
        
        public enum Keyword: String, KeywordRepresentable {
            case groceries
            case homeSupplies
            case rent
            case mortgage
            case home
            case condoFee
            case security
            case domesticService
            case cleaning
            case chef
            case cooking
            case laundry
            case lawnCare
            case landscaping

            public var value: Home {
                switch self {
                case .groceries: .groceries
                case .homeSupplies: .homeSupplies
                case .rent: .rent
                case .mortgage, .home: .mortgage
                case .condoFee: .condoFee
                case .security: .security
                case .domesticService, .cleaning: .domesticService
                case .chef, .cooking: .chef
                case .laundry: .laundry
                case .lawnCare, .landscaping: .lawnCare
                }
            }
        }

        public var iconName: String {
            switch self {
            case .groceries: "basket" // 􁖊
            case .homeSupplies: "lightbulb" // 􀛭
            case .rent: "person.badge.key" // 􁏺
            case .mortgage: "house" // 􀎞
            case .condoFee: "building" // 􀮅
            case .security: "lock.fill" // 􀎡
            case .domesticService: "bubbles.and.sparkles" // 􁒉
            case .chef: "cooktop" // 􁕠
            case .laundry: "drop.keypad.rectangle" // 􁓀
            case .lawnCare: "tree" // 􁝯
            }
        }
        
        public var name: String {
            switch self {
            case .groceries: String(localized: "Groceries")
            case .homeSupplies: String(localized: "Home Supplies")
            case .rent: String(localized: "Rent")
            case .mortgage: String(localized: "Mortgage")
            case .condoFee: String(localized: "Condo Fee")
            case .security: String(localized: "Security")
            case .domesticService: String(localized: "Domestic Service")
            case .chef: String(localized: "Chef")
            case .laundry: String(localized: "Laundry")
            case .lawnCare: String(localized: "Lawn Care")
            }
        }
    }
}
