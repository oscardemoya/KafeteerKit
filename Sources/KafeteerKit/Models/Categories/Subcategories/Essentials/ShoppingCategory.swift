//
//  ShoppingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Shopping: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .essentials
        public static var categoryIcon: Self = .shopping
        public static var categoryName = String(localized: "Shopping", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .shopping(self) }
        
        case shopping
        case list
        case deal
        case coupon

        public enum Keyword: String, KeywordRepresentable {
            case shopping
            case list
            case deal
            case clearance
            case outlet
            case sale
            case coupon

            public var value: Shopping {
                switch self {
                case .shopping: .shopping
                case .list: .list
                case .deal, .clearance, .outlet, .sale: .deal
                case .coupon: .coupon
                }
            }
        }

        public var iconName: String {
            switch self {
            case .shopping: "cart" // 􀍩
            case .list: "text.page" // 􀉆
            case .deal: "tag" // 􀋡
            case .coupon: "wallet.pass" // 􀟾
            }
        }
        
        public var name: String {
            switch self {
            case .shopping: String(localized: "Shopping", bundle: .module)
            case .list: String(localized: "List", bundle: .module)
            case .deal: String(localized: "Deal", bundle: .module)
            case .coupon: String(localized: "Coupon", bundle: .module)
            }
        }
    }
}
