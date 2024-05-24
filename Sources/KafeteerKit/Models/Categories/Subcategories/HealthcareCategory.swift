//
//  HealthcareCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Healthcare: String, CategoryRepresentable {
        public static var defaultValue: Self = .healthcare
        public static var categoryName = String(localized: "Healthcare")
        public var asPaymentCategory: PaymentCategory { .healthcare(self) }
        
        case healthcare
        case dentalCare
        case mentalHealth
        case medication
        case protectiveEquipment
        
        public enum Keyword: String, KeywordRepresentable {
            case healthcare
            case health
            case medical
            case dentalCare
            case mentalHealth
            case medication
            case meds
            case protectiveEquipment
            
            public var value: Healthcare {
                switch self {
                case .healthcare, .health, .medical: .healthcare
                case .dentalCare: .dentalCare
                case .mentalHealth: .mentalHealth
                case .medication, .meds: .medication
                case .protectiveEquipment: .protectiveEquipment
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .healthcare: "cross.case" // 􀯙
            case .dentalCare: "face.smiling" // 􀎸
            case .mentalHealth: "brain.head.profile" // 􀯏
            case .medication: "pill" // 􁚭
            case .protectiveEquipment: "facemask" // 􁃌
            }
        }
        
        public var name: String {
            switch self {
            case .healthcare: String(localized: "Healthcare")
            case .dentalCare: String(localized: "Dental Care")
            case .mentalHealth: String(localized: "Mental Health")
            case .medication: String(localized: "Medication")
            case .protectiveEquipment: String(localized: "Protective Equipment")
            }
        }
    }
}
