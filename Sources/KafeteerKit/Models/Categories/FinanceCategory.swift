//
//  FinanceCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Finance: String, CategoryRepresentable {
        case creditCard
        case loan
        case taxes
        case savings
        case insurance
        case business
        case investment
        case funds
        case retirement
        case accounting
        
        public enum Keyword: String, CaseInsensitive {
            case creditCard
            case loan
            case taxes
            case savings
            case insurance
            case business
            case investment
            case funds
            case retirement
            case accounting
            
            public var value: Finance {
                switch self {
                case .creditCard: .creditCard
                case .loan: .loan
                case .taxes: .taxes
                case .savings: .savings
                case .insurance: .insurance
                case .business: .business
                case .investment: .investment
                case .funds: .funds
                case .retirement: .retirement
                case .accounting: .accounting
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .creditCard: "creditcard" // 􀍯
            case .loan: "building.columns" // 􀤨
            case .taxes: "percent" // 􀘾
            case .savings: "dollarsign.circle" // 􀖗
            case .insurance: "umbrella.percent" // 􀸰
            case .business: "briefcase" // 􀎜
            case .investment: "chart.line.uptrend.xyaxis" // 􀑁
            case .funds: "banknote" // 􀭿
            case .retirement: "eyeglasses" // 􀖆
            case .accounting: "candybarphone" // 􀪳
            }
        }
        
        public var name: String {
            switch self {
            case .creditCard: String(localized: LocalizedStringResource("Credit Card"))
            case .loan: String(localized: LocalizedStringResource("Loan"))
            case .taxes: String(localized: LocalizedStringResource("Taxes"))
            case .savings: String(localized: LocalizedStringResource("Savings"))
            case .insurance: String(localized: LocalizedStringResource("Insurance"))
            case .business: String(localized: LocalizedStringResource("Business"))
            case .investment: String(localized: LocalizedStringResource("Investment"))
            case .funds: String(localized: LocalizedStringResource("Funds"))
            case .retirement: String(localized: LocalizedStringResource("Retirement"))
            case .accounting: String(localized: LocalizedStringResource("Accounting"))
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
