//
//  ClothingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Clothing: String, CategoryRepresentable {
        case clothing
        case shirt
        case shoes
        case accessory
        case watch
        case sunglasses
        case jewelry
        case bag
        case handbag
        case suitcase

        public enum Keyword: String, KeywordRepresentable {
            case clothing
            case jeans
            case pants
            case shorts
            case shirt
            case shoes
            case accessory
            case watch
            case sunglasses
            case jewelry
            case bag
            case backpack
            case handbag
            case purse
            case suitcase

            public var value: Clothing {
                switch self {
                case .clothing, .jeans, .pants, .shorts: .clothing
                case .shirt: .shirt
                case .shoes: .shoes
                case .accessory: .accessory
                case .watch: .watch
                case .sunglasses: .sunglasses
                case .jewelry: .jewelry
                case .bag, .backpack: .bag
                case .handbag, .purse: .handbag
                case .suitcase: .suitcase
                }
            }
        }
        
        public static var defaultValue: Self = .clothing
        public static var categoryName = String(localized: "Clothing")
        public var asPaymentCategory: PaymentCategory { .clothing(self) } 
        
        public var iconName: String {
            switch self {
            case .clothing: "hanger" // 􀠖
            case .shirt: "tshirt" // 􀾠
            case .shoes: "shoe.2" // 􁣱
            case .accessory: "hand.raised.fingers.spread" // 􁗩
            case .watch: "watch.analog" // 􁞺
            case .sunglasses: "sunglasses" // 􁻈
            case .jewelry: "crown" // 􀦅
            case .bag: "backpack" // 􁋹
            case .handbag: "handbag" // 􁞸
            case .suitcase: "suitcase" // 􀶉
            }
        }
        
        public var name: String {
            switch self {
            case .clothing: String(localized: "Clothing")
            case .shirt: String(localized: "Shirt")
            case .shoes: String(localized: "Shoes")
            case .accessory: String(localized: "Accessory")
            case .watch: String(localized: "Watch")
            case .jewelry: String(localized: "Jewelry")
            case .sunglasses: String(localized: "Sunglasses")
            case .bag: String(localized: "Bag")
            case .handbag: String(localized: "Handbag")
            case .suitcase: String(localized: "Suitcase")
            }
        }
    }
}
