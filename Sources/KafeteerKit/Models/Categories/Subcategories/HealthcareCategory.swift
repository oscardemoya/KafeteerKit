//
//  HealthcareCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Healthcare: String, CategoryRepresentable {
        case healthcare
        case dentalCare
        case mentalHealth
        case medication
        case protectiveEquipment
        case babysitting
        case childcare
        case pet
        
        public enum Keyword: String, CaseInsensitive {
            case healthcare
            case health
            case medical
            case dentalCare
            case mentalHealth
            case medication
            case meds
            case protectiveEquipment
            case babysitting
            case babycare
            case baby
            case childcare
            case child
            case pet
            
            public var value: Healthcare {
                switch self {
                case .healthcare, .health, .medical: .healthcare
                case .dentalCare: .dentalCare
                case .mentalHealth: .mentalHealth
                case .medication, .meds: .medication
                case .protectiveEquipment: .protectiveEquipment
                case .babysitting, .babycare, .baby: .babysitting
                case .childcare, .child: .childcare
                case .pet: .pet
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
            case .babysitting: "stroller" // 􁞖
            case .childcare: "figure.and.child.holdinghands" // 􁘁
            case .pet: "pawprint" // 􀾞
            }
        }
        
        public var name: String {
            switch self {
            case .healthcare: String(localized: "Healthcare")
            case .dentalCare: String(localized: "Dental Care")
            case .mentalHealth: String(localized: "Mental Health")
            case .medication: String(localized: "Medication")
            case .protectiveEquipment: String(localized: "Protective Equipment")
            case .babysitting: String(localized: "Babysitting")
            case .childcare: String(localized: "Childcare")
            case .pet: String(localized: "Pet")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
