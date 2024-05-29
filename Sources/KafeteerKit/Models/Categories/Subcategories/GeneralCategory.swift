//
//  GenericCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum General: String, CategoryRepresentable {
        public static var categoryIcon: Self = .payment
        public static var categoryName = String(localized: "General")
        public var asPaymentCategory: PaymentCategory { .general(self) }
        
        case payment
        case moneyTransfer
        case recurringPayment
        case shopping
        case deal
        case tip
        case gift
        case giftcard
        case donation
        case reward

        public enum Keyword: String, KeywordRepresentable {
            case payment
            case moneyTransfer
            case recurringPayment
            case recurring
            case shopping
            case deal
            case clearance
            case outlet
            case sale
            case tip
            case gift
            case present
            case giftcard
            case donation
            case reward

            public var value: General {
                switch self {
                case .payment: .payment
                case .moneyTransfer: .moneyTransfer
                case .recurringPayment, .recurring: .recurringPayment
                case .shopping: .shopping
                case .deal, .clearance, .outlet, .sale: .deal
                case .tip: .tip
                case .gift, .present: .gift
                case .giftcard: .giftcard
                case .donation: .donation
                case .reward: .reward
                }
            }
        }

        public var iconName: String {
            switch self {
            case .payment: "banknote" // 􀭿
            case .moneyTransfer:  "arrow.down.left.arrow.up.right" // 􁽧
            case .recurringPayment: "dollarsign.arrow.circlepath" // 􁎣
            case .shopping: "cart" // 􀍩
            case .deal: "tag" // 􀋡
            case .tip: "dollarsign.circle" // 􀖗
            case .gift: "gift" // 􀑉
            case .giftcard: "giftcard" // 􀦠
            case .donation: "heart.rectangle" // 􁃪
            case .reward: "medal" // 􁏋
            }
        }
        
        public var name: String {
            switch self {
            case .payment: String(localized: "Payment")
            case .moneyTransfer: String(localized: "Money Transfer")
            case .recurringPayment: String(localized: "Recurring Payment")
            case .shopping: String(localized: "Shopping")
            case .deal: String(localized: "Deal")
            case .tip: String(localized: "Tip")
            case .gift: String(localized: "Gift")
            case .giftcard: String(localized: "Gift Card")
            case .donation: String(localized: "Donation")
            case .reward: String(localized: "Reward")
            }
        }
    }
}
