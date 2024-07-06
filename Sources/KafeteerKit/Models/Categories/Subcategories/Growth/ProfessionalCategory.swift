//
//  ProfessionalCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Professional: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .growth
        public static var categoryIcon: Self = .allowance
        public static var categoryName = String(localized: "Professional", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .professional(self) }
        
        case training
        case certification
        case conference
        case accommodation
        case allowance
        
        public enum Keyword: String, KeywordRepresentable {
            case training
            case certification
            case conference
            case accommodation
            case allowance
            
            public var value: Professional {
                switch self {
                case .training: .training
                case .certification: .certification
                case .conference: .conference
                case .accommodation: .accommodation
                case .allowance: .allowance
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .training: "pencil.and.list.clipboard" // 􁕍
            case .certification: "checkmark.seal" // 􀇺
            case .conference: "person.3" // 􀝊
            case .accommodation: "building.2" // 􀝒
            case .allowance: "envelope" // 􀍕
            }
        }
        
        public var name: String {
            switch self {
            case .training: String(localized: "Training", bundle: .module)
            case .certification: String(localized: "Certification", bundle: .module)
            case .conference: String(localized: "Conference", bundle: .module)
            case .accommodation: String(localized: "Accommodation", bundle: .module)
            case .allowance: String(localized: "Allowance", bundle: .module)
            }
        }
    }
}
