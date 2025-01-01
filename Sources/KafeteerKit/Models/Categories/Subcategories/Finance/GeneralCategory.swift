//
//  GenericCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum General: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .finance
        public static var categoryIcon: Self = .general
        public static var categoryName = String(localized: "General", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .general(self) }
        
        case general
        case payment
        case moneyTransfer
        case recurringPayment
        case shopping
        case list
        case deal

        public enum Keyword: String, KeywordRepresentable {
            case general
            case payment
            case moneyTransfer
            case recurringPayment
            case recurring
            case shopping
            case list
            case deal
            case clearance
            case outlet
            case sale

            public var value: General {
                switch self {
                case .general: .general
                case .payment: .payment
                case .moneyTransfer: .moneyTransfer
                case .recurringPayment, .recurring: .recurringPayment
                case .shopping: .shopping
                case .list: .list
                case .deal, .clearance, .outlet, .sale: .deal
                }
            }
        }

        public var iconName: String {
            switch self {
            case .general: "circle.dashed" // 􀓞
            case .payment: "dollarsign.circle" // 􀖗
            case .moneyTransfer:  "arrow.down.left.arrow.up.right" // 􁽧
            case .recurringPayment: "dollarsign.arrow.circlepath" // 􁎣
            case .shopping: "cart" // 􀍩
            case .list: "text.page" // 􀉆
            case .deal: "tag" // 􀋡
            }
        }
        
        public var name: String {
            switch self {
            case .general: String(localized: "General", bundle: .module)
            case .payment: String(localized: "Payment", bundle: .module)
            case .moneyTransfer: String(localized: "Money Transfer", bundle: .module)
            case .recurringPayment: String(localized: "Recurring Payment", bundle: .module)
            case .shopping: String(localized: "Shopping", bundle: .module)
            case .list: String(localized: "List", bundle: .module)
            case .deal: String(localized: "Deal", bundle: .module)
            }
        }
    }
}
