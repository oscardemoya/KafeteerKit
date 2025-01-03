//
//  ClothingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Clothing: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .essentials
        public static var categoryIcon: Self = .clothing
        public static var categoryName = String(localized: "Clothing", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .clothing(self) }
        
        case clothing
        case shirt
        case jacket
        case coat
        case shoes
        case accessory
        case watch
        case sunglasses
        case cap
        case hat
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
            case jacket
            case coat
            case shoes
            case accessory
            case watch
            case sunglasses
            case cap
            case hat
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
                case .jacket: .jacket
                case .coat: .coat
                case .shoes: .shoes
                case .accessory: .accessory
                case .watch: .watch
                case .sunglasses: .sunglasses
                case .cap: .cap
                case .hat: .hat
                case .jewelry: .jewelry
                case .bag, .backpack: .bag
                case .handbag, .purse: .handbag
                case .suitcase: .suitcase
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .clothing: "hanger" // 􀠖
            case .shirt: "tshirt" // 􀾠
            case .jacket: "jacket" // 􂏬
            case .coat: "coat" // 􂏣
            case .shoes: "shoe.2" // 􁣱
            case .accessory: "hand.raised.fingers.spread" // 􁗩
            case .watch: "watch.analog" // 􁞺
            case .sunglasses: "sunglasses" // 􁻈
            case .cap: "hat.cap" // 􂏨
            case .hat: "hat.widebrim" // 􂏦
            case .jewelry: "crown" // 􀦅
            case .bag: "backpack" // 􁋹
            case .handbag: "handbag" // 􁞸
            case .suitcase: "suitcase" // 􀶉
            }
        }
        
        public var name: String {
            switch self {
            case .clothing: String(localized: "Clothing", bundle: .module)
            case .shirt: String(localized: "Shirt", bundle: .module)
            case .jacket: String(localized: "Jacket", bundle: .module)
            case .coat: String(localized: "Coat", bundle: .module)
            case .shoes: String(localized: "Shoes", bundle: .module)
            case .accessory: String(localized: "Accessory", bundle: .module)
            case .watch: String(localized: "Watch", bundle: .module)
            case .jewelry: String(localized: "Jewelry", bundle: .module)
            case .sunglasses: String(localized: "Sunglasses", bundle: .module)
            case .cap: String(localized: "Cap", bundle: .module)
            case .hat: String(localized: "Hat", bundle: .module)
            case .bag: String(localized: "Bag", bundle: .module)
            case .handbag: String(localized: "Handbag", bundle: .module)
            case .suitcase: String(localized: "Suitcase", bundle: .module)
            }
        }
    }
}
