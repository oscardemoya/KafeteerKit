//
//  CelebrationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Celebration: String, CategoryRepresentable {
        public static var defaultValue: Self = .celebration
        public static var categoryName = String(localized: "Celebration")
        public var asPaymentCategory: PaymentCategory { .celebration(self) }
        
        case celebration
        case party
        case birthday
        case wedding

        public enum Keyword: String, KeywordRepresentable {
            case celebration
            case party
            case birthday
            case wedding
            
            public var value: Celebration {
                switch self {
                case .celebration: .celebration
                case .party: .party
                case .birthday: .birthday
                case .wedding: .wedding
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .celebration: "fireworks" // 􂁞
            case .party: "party.popper" // 􁓵
            case .birthday: "birthday.cake" // 􁖩
            case .wedding: "figure.2.arms.open" // 􁗆
            }
        }
        
        public var name: String {
            switch self {
            case .celebration: String(localized: "Celebration")
            case .party: String(localized: "Party")
            case .birthday: String(localized: "Birthday")
            case .wedding: String(localized: "Wedding")
            }
        }
    }
}
