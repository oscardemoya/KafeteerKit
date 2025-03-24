//
//  WorkCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Work: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .finance
        public static var categoryIcon: Self = .work
        public static var categoryName = String(localized: "Work", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .work(self) }
        
        case work
        case salary
        case wage
        case freelance
        case bonus
        
        public enum Keyword: String, KeywordRepresentable {
            case work
            case salary
            case wage
            case freelance
            case bonus
            
            public var value: Work {
                switch self {
                case .work: .work
                case .salary: .salary
                case .wage: .wage
                case .freelance: .freelance
                case .bonus: .bonus
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .work: "briefcase" // 􀎜
            case .salary: "dollarsign.ring.dashed" // 􂮇
            case .wage: "dollarsign.square" // 􀗗
            case .freelance: "laptopcomputer" // 􀟛
            case .bonus: "app.gift" // 􀑑
            }
        }
        
        public var name: String {
            switch self {
            case .work: String(localized: "Work", bundle: .module)
            case .salary: String(localized: "Salary", bundle: .module)
            case .wage: String(localized: "Wage", bundle: .module)
            case .freelance: String(localized: "Freelance", bundle: .module)
            case .bonus: String(localized: "Bonus", bundle: .module)
            }
        }
    }
}
