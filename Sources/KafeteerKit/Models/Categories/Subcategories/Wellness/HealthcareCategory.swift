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
        case heathInsurance
        case dentalCare
        case eyeCare
        case mentalHealth
        case firstAid
        case medication
        case doctor
        case hospital
        case surgery
        case nursing
        case medicalTest
        case medicalDevice
        case protectiveEquipment
        case disabilityAids

        public enum Keyword: String, KeywordRepresentable {
            case healthcare
            case health
            case heathInsurance
            case medical
            case dentalCare
            case eyeCare
            case vision
            case mentalHealth
            case firstAid
            case medication
            case medicine
            case meds
            case pharmacy
            case doctor
            case hospital
            case clinic
            case surgery
            case nursing
            case nurse
            case medicalTest
            case medicalDevice
            case protectiveEquipment
            case disabilityAids
            case disability
            
            public var value: Healthcare {
                switch self {
                case .healthcare, .health, .medical: .healthcare
                case .heathInsurance: .heathInsurance
                case .dentalCare: .dentalCare
                case .eyeCare, .vision: .eyeCare
                case .mentalHealth: .mentalHealth
                case .firstAid: .firstAid
                case .medication, .medicine, .meds, .pharmacy: .medication
                case .doctor: .doctor
                case .hospital, .clinic: .hospital
                case .surgery: .surgery
                case .nursing, .nurse: .nursing
                case .medicalTest: .medicalTest
                case .medicalDevice: .medicalDevice
                case .protectiveEquipment: .protectiveEquipment
                case .disabilityAids, .disability: .disabilityAids
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .healthcare: "cross.case" // 􀯙
            case .heathInsurance: "heart.text.clipboard" // 􂤇
            case .dentalCare: "mouth" // 􀦩
            case .eyeCare: "eye" // 􀋭
            case .mentalHealth: "brain.head.profile" // 􀯏
            case .firstAid: "bandage" // 􀎓
            case .medication: "pill" // 􁚭
            case .doctor: "stethoscope" // 􀝾
            case .hospital: "cross" // 􀣜
            case .surgery: "cross.circle" // 􀣞
            case .nursing: "syringe" // 􀠷
            case .medicalTest: "chart.line.text.clipboard" // 􂮺
            case .medicalDevice: "medical.thermometer" // 􁒇
            case .protectiveEquipment: "facemask" // 􁃌
            case .disabilityAids: "figure.roll" // 􁈑
            }
        }
        
        public var name: String {
            switch self {
            case .healthcare: String(localized: "Healthcare", bundle: .module)
            case .heathInsurance: String(localized: "Health Insurance", bundle: .module)
            case .dentalCare: String(localized: "Dental Care", bundle: .module)
            case .eyeCare: String(localized: "Eye Care", bundle: .module)
            case .mentalHealth: String(localized: "Mental Health", bundle: .module)
            case .firstAid: String(localized: "First Aid", bundle: .module)
            case .medication: String(localized: "Medication", bundle: .module)
            case .doctor: String(localized: "Doctor's Visit", bundle: .module)
            case .hospital: String(localized: "Hospital", bundle: .module)
            case .surgery: String(localized: "Surgery", bundle: .module)
            case .nursing: String(localized: "Nursing Service", bundle: .module)
            case .medicalTest: String(localized: "Medical Test", bundle: .module)
            case .medicalDevice: String(localized: "Medical Device", bundle: .module)
            case .protectiveEquipment: String(localized: "Protective Equipment", bundle: .module)
            case .disabilityAids: String(localized: "Disability Aids", bundle: .module)
            }
        }
    }
}
