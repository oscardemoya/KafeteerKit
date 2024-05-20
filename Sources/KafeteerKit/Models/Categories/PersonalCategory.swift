//
//  PersonalCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Personal: String, CategoryRepresentable {
        case healthcare
        case mentalHealth
        case medication
        case babysitting
        case childcare
        case pet
        case education
        case schoolSupplies
        case personalCare
        case hairCare
        case beauty
        case birthday
        
        public enum Keyword: String, CaseInsensitive {
            case healthcare
            case health
            case medical
            case mentalHealth
            case medication
            case meds
            case babysitting
            case babycare
            case baby
            case childcare
            case child
            case pet
            case education
            case school
            case university
            case schoolSupplies
            case personalCare
            case hairCare
            case beauty
            case birthday
            case celebration
            case party
            
            public var value: Personal {
                switch self {
                case .healthcare, .health, .medical: .healthcare
                case .mentalHealth: .mentalHealth
                case .medication, .meds: .medication
                case .babysitting, .babycare, .baby: .babysitting
                case .childcare, .child: .childcare
                case .pet: .pet
                case .education, .school, .university: .education
                case .schoolSupplies: .schoolSupplies
                case .personalCare: .personalCare
                case .hairCare: .hairCare
                case .beauty: .beauty
                case .birthday, .celebration, .party: .birthday
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .healthcare: "cross.case" // 􀯙
            case .mentalHealth: "brain.head.profile" // 􀯏
            case .medication: "pill" // 􁚭
            case .babysitting: "stroller" // 􁞖
            case .childcare: "figure.and.child.holdinghands" // 􁘁
            case .pet: "pawprint" // 􀾞
            case .education: "graduationcap" // 􀫓
            case .schoolSupplies: "pencil.and.ruler" // 􁖆
            case .personalCare: "person" // 􀉩
            case .hairCare: "scissors" // 􀉈
            case .beauty: "mouth" // 􀦩
            case .birthday: "birthday.cake" // 􁖩
            }
        }
        
        public var name: String {
            switch self {
            case .healthcare: String(localized: LocalizedStringResource("Healthcare"))
            case .mentalHealth: String(localized: LocalizedStringResource("Mental Health"))
            case .medication: String(localized: LocalizedStringResource("Medication"))
            case .babysitting: String(localized: LocalizedStringResource("Babysitting"))
            case .childcare: String(localized: LocalizedStringResource("Childcare"))
            case .pet: String(localized: LocalizedStringResource("Pet"))
            case .education: String(localized: LocalizedStringResource("Education"))
            case .schoolSupplies: String(localized: LocalizedStringResource("School Supplies"))
            case .personalCare: String(localized: LocalizedStringResource("Personal Care"))
            case .hairCare: String(localized: LocalizedStringResource("Hair Care"))
            case .beauty: String(localized: LocalizedStringResource("Beauty"))
            case .birthday: String(localized: LocalizedStringResource("Birthday"))
            }
        }
    }
}
