//
//  BusinessCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Business: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .finance
        public static var categoryIcon: Self = .business
        public static var categoryName = String(localized: "Business", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .business(self) }
        
        case business
        case funds
        case accounting
        case lawyer
        case payroll
        case officeSupplies
        case hardware
        case branding
        case marketing

        public enum Keyword: String, KeywordRepresentable {
            case business
            case funds
            case accounting
            case lawyer
            case payroll
            case officeSupplies
            case hardware
            case branding
            case marketing

            public var value: Business {
                switch self {
                case .business: .business
                case .funds: .funds
                case .accounting: .accounting
                case .lawyer: .lawyer
                case .payroll: .payroll
                case .officeSupplies: .officeSupplies
                case .hardware: .hardware
                case .branding: .branding
                case .marketing: .marketing
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .business: "storefront" // 􁽇
            case .funds: "laurel.leading" // 􁊘
            case .accounting: "candybarphone" // 􀪳
            case .lawyer: "append.page" // 􀉇
            case .payroll: "lanyardcard" // 􀰵
            case .officeSupplies: "paperclip" // 􀉢
            case .hardware: "printer" // 􀎚
            case .branding: "checkmark.seal" // 􀇺
            case .marketing: "burst" // 􀑂
            }
        }
        
        public var name: String {
            switch self {
            case .business: String(localized: "Business", bundle: .module)
            case .funds: String(localized: "Funds", bundle: .module)
            case .accounting: String(localized: "Accounting", bundle: .module)
            case .lawyer: String(localized: "Lawyer", bundle: .module)
            case .payroll: String(localized: "Payroll", bundle: .module)
            case .officeSupplies: String(localized: "Office Supplies", bundle: .module)
            case .hardware: String(localized: "Hardware", bundle: .module)
            case .branding: String(localized: "Branding", bundle: .module)
            case .marketing: String(localized: "Marketing", bundle: .module)
            }
        }
    }
}
