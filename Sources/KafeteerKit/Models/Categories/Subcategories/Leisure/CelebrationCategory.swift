//
//  CelebrationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Celebration: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .leisure
        public static var categoryIcon: Self = .celebration
        public static var categoryName = String(localized: "Celebration", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .celebration(self) }
        
        case celebration
        case party
        case birthday
        case wedding
        case festival

        public enum Keyword: String, KeywordRepresentable {
            case celebration
            case party
            case birthday
            case wedding
            case festival
            
            public var value: Celebration {
                switch self {
                case .celebration: .celebration
                case .party: .party
                case .birthday: .birthday
                case .wedding: .wedding
                case .festival: .festival
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .celebration: "fireworks" // 􂁞
            case .party: "party.popper" // 􁓵
            case .birthday: "birthday.cake" // 􁖩
            case .wedding: "figure.2" // 􀘷
            case .festival: "theatermask.and.paintbrush" // 􁔘
            }
        }
        
        public var name: String {
            switch self {
            case .celebration: String(localized: "Celebration", bundle: .module)
            case .party: String(localized: "Party", bundle: .module)
            case .birthday: String(localized: "Birthday", bundle: .module)
            case .wedding: String(localized: "Wedding", bundle: .module)
            case .festival: String(localized: "Festival", bundle: .module)
            }
        }
    }
}
