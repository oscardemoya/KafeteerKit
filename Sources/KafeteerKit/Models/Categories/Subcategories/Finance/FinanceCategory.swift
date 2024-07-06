//
//  FinanceCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Finance: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .finance
        public static var categoryIcon: Self = .savings
        public static var categoryName = String(localized: "Personal Finance", bundle: .module)
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
            case .creditCard: String(localized: "Credit Card", bundle: .module)
            case .loan: String(localized: "Loan", bundle: .module)
            case .bankFee: String(localized: "Bank Fee", bundle: .module)
            case .bankCheck: String(localized: "Bank Check", bundle: .module)
            case .digitalCurrency: String(localized: "Digital Currency", bundle: .module)
            case .taxes: String(localized: "Taxes", bundle: .module)
            case .insurance: String(localized: "Insurance", bundle: .module)
            case .savings: String(localized: "Savings", bundle: .module)
            case .retirement: String(localized: "Retirement", bundle: .module)
            }
        }
    }
}
