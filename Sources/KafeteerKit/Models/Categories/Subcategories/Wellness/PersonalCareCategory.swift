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
        public static var categoryIcon: Self = .toiletries
        public static var categoryName = String(localized: "Personal Care", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .personalCare(self) }
        
        case toiletries
        case essentials
        case hygiene
        case hairCare
        case barber
        case cosmetics
        case skinCare
        case beauty
        
        public enum Keyword: String, KeywordRepresentable {
            case toiletries
            case essentials
            case hygiene
            case personalCare
            case hairCare
            case haircut
            case barber
            case barberShop
            case grooming
            case cosmetics
            case makeup
            case skinCare
            case facialTreatment
            case face
            case beauty
            case laser
            
            public var value: PersonalCare {
                switch self {
                case .toiletries, .personalCare: .toiletries
                case .essentials: .essentials
                case .hygiene: .hygiene
                case .hairCare, .haircut: .hairCare
                case .barber, .barberShop, .grooming: .barber
                case .cosmetics, .makeup: .cosmetics
                case .skinCare, .facialTreatment, .face: .skinCare
                case .beauty, .laser: .beauty
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .toiletries: "cross.vial" // 􀼘
            case .essentials: "comb" // 􀦈
            case .hygiene: "hands.and.sparkles" // 􀲮
            case .hairCare: "scissors" // 􀉈
            case .barber: "mustache" // 􀥿
            case .cosmetics: "eyebrow" // 􀦭
            case .skinCare: "face.smiling" // 􀎸
            case .beauty: "laser.burst" // 􂁝
            }
        }
        
        public var name: String {
            switch self {
            case .toiletries: String(localized: "Toiletries", bundle: .module)
            case .essentials: String(localized: "Essentials", bundle: .module)
            case .hygiene: String(localized: "Hygiene", bundle: .module)
            case .hairCare: String(localized: "Hair Care", bundle: .module)
            case .barber: String(localized: "Barber", bundle: .module)
            case .cosmetics: String(localized: "Cosmetics", bundle: .module)
            case .skinCare: String(localized: "Skin Care", bundle: .module)
            case .beauty: String(localized: "Beauty", bundle: .module)
            }
        }
    }
}
