//
//  BusinessCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Business: String, CategoryRepresentable {
        public static var defaultValue: Self = .business
        public static var categoryName = String(localized: "Business")
        public var asPaymentCategory: PaymentCategory { .business(self) }
        
        case business
        case investment
        case funds
        case accounting
        case lawyer
        case payroll
        case officeSupplies
        case hardware
        case conference

        public enum Keyword: String, KeywordRepresentable {
            case business
            case investment
            case funds
            case accounting
            case lawyer
            case payroll
            case officeSupplies
            case hardware
            case conference

            public var value: Business {
                switch self {
                case .business: .business
                case .investment: .investment
                case .funds: .funds
                case .accounting: .accounting
                case .lawyer: .lawyer
                case .payroll: .payroll
                case .officeSupplies: .officeSupplies
                case .hardware: .hardware
                case .conference: .conference
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .business: "storefront" // 􁽇
            case .investment: "chart.line.uptrend.xyaxis" // 􀑁
            case .funds: "laurel.leading" // 􁊘
            case .accounting: "candybarphone" // 􀪳
            case .lawyer: "briefcase" // 􀎜
            case .payroll: "lanyardcard" // 􀰵
            case .officeSupplies: "paperclip" // 􀉢
            case .hardware: "printer" // 􀎚
            case .conference: "person.3" // 􀝊
            }
        }
        
        public var name: String {
            switch self {
            case .business: String(localized: "Business")
            case .investment: String(localized: "Investment")
            case .funds: String(localized: "Funds")
            case .accounting: String(localized: "Accounting")
            case .lawyer: String(localized: "Lawyer")
            case .payroll: String(localized: "Payroll")
            case .officeSupplies: String(localized: "Office Supplies")
            case .hardware: String(localized: "Hardware")
            case .conference: String(localized: "Conference")
            }
        }
    }
}