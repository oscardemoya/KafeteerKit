//
//  ProfessionalCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Professional: String, CategoryRepresentable {
        public static var categoryIcon: Self = .allowance
        public static var categoryName = String(localized: "Professional")
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
            case .allowance: "rosette" // 􀛯
            }
        }
        
        public var name: String {
            switch self {
            case .training: String(localized: "Training")
            case .certification: String(localized: "Certification")
            case .conference: String(localized: "Conference")
            case .accommodation: String(localized: "Accommodation")
            case .allowance: String(localized: "Allowance")
            }
        }
    }
}
