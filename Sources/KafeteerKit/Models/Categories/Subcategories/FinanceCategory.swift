//
//  FinanceCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Finance: String, CategoryRepresentable {
        public static var defaultValue: Self = .savings
        public static var categoryName = String(localized: "Finance")
        public var asPaymentCategory: PaymentCategory { .finance(self) }
        
        case creditCard
        case loan
        case bankFee
        case bankCheck
        case digitalCurrency
        case taxes
        case insurance
        case savings
        case retirement
        
        public enum Keyword: String, KeywordRepresentable {
            case creditCard
            case loan
            case bankFee
            case bankCheck
            case digitalCurrency
            case bitcoin
            case taxes
            case insurance
            case savings
            case retirement
            
            public var value: Finance {
                switch self {
                case .creditCard: .creditCard
                case .loan: .loan
                case .bankFee: .bankFee
                case .bankCheck: .bankCheck
                case .digitalCurrency, .bitcoin: .digitalCurrency
                case .taxes: .taxes
                case .insurance: .insurance
                case .savings: .savings
                case .retirement: .retirement
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .creditCard: "creditcard" // 􀍯
            case .loan: "building.columns" // 􀤨
            case .bankFee: "scroll" // 􀤏
            case .bankCheck: "signature" // 􀙤
            case .digitalCurrency: "bitcoinsign.circle" // 􀗕
            case .taxes: "percent" // 􀘾
            case .insurance: "umbrella.percent" // 􀸰
            case .savings: "dollarsign.square" // 􀗗
            case .retirement: "signpost.right" // 􀯌
            }
        }
        
        public var name: String {
            switch self {
            case .creditCard: String(localized: "Credit Card")
            case .loan: String(localized: "Loan")
            case .bankFee: String(localized: "Bank Fee")
            case .bankCheck: String(localized: "Bank Check")
            case .digitalCurrency: String(localized: "Digital Currency")
            case .taxes: String(localized: "Taxes")
            case .insurance: String(localized: "Insurance")
            case .savings: String(localized: "Savings")
            case .retirement: String(localized: "Retirement")
            }
        }
    }
}
