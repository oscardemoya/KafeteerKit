//
//  HomeCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Home: String, CategoryRepresentable {
        case groceries
        case toiletries
        case food
        case drinks
        case rent
        case mortgage
        case condoFee
        case security
        case domesticService
        case lawn
        
        public enum Keyword: String, CaseInsensitive {
            case groceries
            case toiletries
            case food
            case meals
            case drinks
            case beverages
            case coffee
            case tea
            case rent
            case mortgage
            case home
            case condoFee
            case security
            case domesticService
            case cleaning
            case cooking
            case lawn
            case landscaping

            public var value: Home {
                switch self {
                case .groceries: .groceries
                case .toiletries: .toiletries
                case .food, .meals: .food
                case .drinks, .beverages, .coffee, .tea: .drinks
                case .rent: .rent
                case .mortgage, .home: .mortgage
                case .condoFee: .condoFee
                case .security: .security
                case .domesticService, .cleaning, .cooking: .domesticService
                case .lawn, .landscaping: .lawn
                }
            }
        }

        public var iconName: String {
            switch self {
            case .groceries: "basket" // 􁖊
            case .toiletries: "bubbles.and.sparkles" // 􁒉
            case .food: "takeoutbag.and.cup.and.straw" // 􀻐
            case .drinks: "cup.and.saucer" // 􀸘
            case .rent: "person.badge.key" // 􁏺
            case .mortgage: "house" // 􀎞
            case .condoFee: "building" // 􀮅
            case .security: "lock.fill" // 􀎡
            case .domesticService: "hands.sparkles" // 􀲮
            case .lawn: "leaf" // 􀥲
            }
        }
        
        public var name: String {
            switch self {
            case .groceries: String(localized: LocalizedStringResource("Groceries"))
            case .toiletries: String(localized: LocalizedStringResource("Toiletries"))
            case .food: String(localized: LocalizedStringResource("Food"))
            case .drinks: String(localized: LocalizedStringResource("Drinks"))
            case .rent: String(localized: LocalizedStringResource("Rent"))
            case .mortgage: String(localized: LocalizedStringResource("Mortgage"))
            case .condoFee: String(localized: LocalizedStringResource("Condo Fee"))
            case .security: String(localized: LocalizedStringResource("Security"))
            case .domesticService: String(localized: LocalizedStringResource("Domestic Service"))
            case .lawn: String(localized: LocalizedStringResource("Lawn"))
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
