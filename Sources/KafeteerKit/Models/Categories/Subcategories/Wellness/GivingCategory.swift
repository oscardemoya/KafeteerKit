//
//  GivingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Giving: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .wellness
        public static var categoryIcon: Self = .gift
        public static var categoryName = String(localized: "Giving", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .giving(self) }
        
        case tip
        case gift
        case giftcard
        case donation
        case reward

        public enum Keyword: String, KeywordRepresentable {
            case tip
            case gift
            case present
            case giftcard
            case donation
            case reward

            public var value: Giving {
                switch self {
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
            case .tip: "banknote" // 􀭿
            case .gift: "gift" // 􀑉
            case .giftcard: "giftcard" // 􀦠
            case .donation: "heart.rectangle" // 􁃪
            case .reward: "medal" // 􁏋
            }
        }
        
        public var name: String {
            switch self {
            case .tip: String(localized: "Tip", bundle: .module)
            case .gift: String(localized: "Gift", bundle: .module)
            case .giftcard: String(localized: "Gift Card", bundle: .module)
            case .donation: String(localized: "Donation", bundle: .module)
            case .reward: String(localized: "Reward", bundle: .module)
            }
        }
    }
}
