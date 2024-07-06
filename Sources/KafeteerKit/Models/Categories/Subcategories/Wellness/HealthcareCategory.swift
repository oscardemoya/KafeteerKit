//
//  HealthcareCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Healthcare: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .wellness
        public static var categoryIcon: Self = .healthcare
        public static var categoryName = String(localized: "Healthcare", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .healthcare(self) }
        
        case healthcare
        case dentalCare
        case mentalHealth
        case medication
        case firstAid
        
        public enum Keyword: String, KeywordRepresentable {
            case healthcare
            case health
            case medical
            case dentalCare
            case mentalHealth
            case medication
            case meds
            case firstAid
            
            public var value: Healthcare {
                switch self {
                case .healthcare, .health, .medical: .healthcare
                case .dentalCare: .dentalCare
                case .mentalHealth: .mentalHealth
                case .medication, .meds: .medication
                case .firstAid: .firstAid
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .healthcare: "cross.case" // 􀯙
            case .dentalCare: "face.smiling" // 􀎸
            case .mentalHealth: "brain.head.profile" // 􀯏
            case .medication: "pill" // 􁚭
            case .firstAid: "bandage" // 􀎓
            }
        }
        
        public var name: String {
            switch self {
            case .healthcare: String(localized: "Healthcare", bundle: .module)
            case .dentalCare: String(localized: "Dental Care", bundle: .module)
            case .mentalHealth: String(localized: "Mental Health", bundle: .module)
            case .medication: String(localized: "Medication", bundle: .module)
            case .firstAid: String(localized: "First Aid", bundle: .module)
            }
        }
    }
}
