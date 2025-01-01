//
//  FoodCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Food: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .essentials
        public static var categoryIcon: Self = .dinner
        public static var categoryName = String(localized: "Food", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .food(self) }
        
        case groceries
        case breakfast
        case lunch
        case dinner
        case snacks
        case healthyFood
        case fastFood
        case drinks
        case water
        case coffee
        
        public enum Keyword: String, KeywordRepresentable {
            case groceries
            case food
            case breakfast
            case lunch
            case dinner
            case restaurant
            case meals
            case snacks
            case healthyFood
            case fastFood
            case pizza
            case burger
            case hotdog
            case drinks
            case beverages
            case water
            case juice
            case soda
            case beer
            case coffee
            case tea

            public var value: Food {
                switch self {
                case .groceries, .food: .groceries
                case .breakfast: .breakfast
                case .lunch: .lunch
                case .dinner, .restaurant, .meals: .dinner
                case .snacks: .snacks
                case .healthyFood: .healthyFood
                case .fastFood, .pizza, .burger, .hotdog: .fastFood
                case .drinks, .beverages, .soda, .beer: .drinks
                case .water, .juice: .water
                case .coffee, .tea: .coffee
                }
            }
        }

        public var iconName: String {
            switch self {
            case .groceries: "basket" // 􁖊
            case .breakfast: "takeoutbag.and.cup.and.straw" // 􀻐
            case .lunch: "fish" // 􁖐
            case .dinner: "fork.knife" // 􀸩
            case .snacks: "popcorn" // 􁐇
            case .healthyFood: "carrot" // 􁖎
            case .fastFood: "stopwatch" // 􀐯
            case .drinks:  "mug" // 􁞴
            case .water: "waterbottle" // 􁻊
            case .coffee: "cup.and.heat.waves" // 􂊬
            }
        }
        
        public var name: String {
            switch self {
            case .groceries: String(localized: "Groceries", bundle: .module)
            case .breakfast: String(localized: "Breakfast", bundle: .module)
            case .lunch: String(localized: "Lunch", bundle: .module)
            case .dinner: String(localized: "Dinner", bundle: .module)
            case .snacks: String(localized: "Snacks", bundle: .module)
            case .healthyFood: String(localized: "Healthy Food", bundle: .module)
            case .fastFood: String(localized: "Fast Food", bundle: .module)
            case .drinks: String(localized: "Drinks", bundle: .module)
            case .water: String(localized: "Water", bundle: .module)
            case .coffee: String(localized: "Coffee", bundle: .module)
            }
        }
    }
}
