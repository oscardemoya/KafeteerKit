//
//  FoodCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Food: String, CategoryRepresentable {
        public static var defaultValue: Self = .food
        public static var categoryName = String(localized: "Food")
        public var asPaymentCategory: PaymentCategory { .food(self) }
        
        case food
        case snacks
        case breakfast
        case lunch
        case dinner
        case healthyFood
        case junkFood
        case drinks
        case water
        case coffee
        
        public enum Keyword: String, KeywordRepresentable {
            case food
            case meals
            case snacks
            case breakfast
            case lunch
            case dinner
            case healthyFood
            case junkFood
            case fastFood
            case pizza
            case burger
            case drinks
            case beverages
            case soda
            case beer
            case coffee
            case tea
            case water
            case juice

            public var value: Food {
                switch self {
                case .food, .meals: .food
                case .snacks: .snacks
                case .breakfast: .breakfast
                case .lunch: .lunch
                case .dinner: .dinner
                case .healthyFood: .healthyFood
                case .junkFood, .fastFood, .pizza, .burger: .junkFood
                case .drinks, .beverages, .soda, .beer: .drinks
                case .coffee, .tea: .coffee
                case .water, .juice: .water
                }
            }
        }

        public var iconName: String {
            switch self {
            case .food: "fork.knife" // 􀸩
            case .snacks: "popcorn" // 􁐇
            case .breakfast: "fork.knife.circle" // 􀸹
            case .lunch: "takeoutbag.and.cup.and.straw" // 􀻐
            case .dinner: "wineglass" // 􁎤
            case .healthyFood: "carrot" // 􁖎
            case .junkFood: "xmark.bin" // 􀈱
            case .drinks:  "mug" // 􁞴
            case .water: "waterbottle" // 􁻊
            case .coffee: "cup.and.saucer" // 􀸘
            }
        }
        
        public var name: String {
            switch self {
            case .food: String(localized: "Food")
            case .snacks: String(localized: "Snacks")
            case .breakfast: String(localized: "Breakfast")
            case .lunch: String(localized: "Lunch")
            case .dinner: String(localized: "Dinner")
            case .healthyFood: String(localized: "Healthy Food")
            case .junkFood: String(localized: "Junk Food")
            case .drinks: String(localized: "Drinks")
            case .water: String(localized: "Water")
            case .coffee: String(localized: "Coffee")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
