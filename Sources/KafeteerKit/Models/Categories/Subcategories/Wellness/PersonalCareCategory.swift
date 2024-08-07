//
//  PersonalCareCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum PersonalCare: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .wellness
        public static var categoryIcon: Self = .hygiene
        public static var categoryName = String(localized: "Personal Care", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .personalCare(self) }
        
        case toiletries
        case hygiene
        case hairCare
        case cosmetics
        case beauty
        
        public enum Keyword: String, KeywordRepresentable {
            case toiletries
            case hygiene
            case personalCare
            case hairCare
            case haircut
            case grooming
            case cosmetics
            case makeup
            case beauty
            case facialTreatment
            case laser
            
            public var value: PersonalCare {
                switch self {
                case .toiletries: .toiletries
                case .hygiene, .personalCare: .hygiene
                case .hairCare, .haircut, .grooming: .hairCare
                case .cosmetics, .makeup: .cosmetics
                case .beauty, .facialTreatment, .laser: .beauty
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .toiletries: "comb" // 􀦈
            case .hygiene: "hands.and.sparkles" // 􀲮
            case .hairCare: "scissors" // 􀉈
            case .cosmetics: "mouth" // 􀦩
            case .beauty: "laser.burst" // 􂁝
            }
        }
        
        public var name: String {
            switch self {
            case .toiletries: String(localized: "Toiletries", bundle: .module)
            case .hygiene: String(localized: "Hygiene", bundle: .module)
            case .hairCare: String(localized: "Hair Care", bundle: .module)
            case .cosmetics: String(localized: "Cosmetics", bundle: .module)
            case .beauty: String(localized: "Beauty", bundle: .module)
            }
        }
    }
}
