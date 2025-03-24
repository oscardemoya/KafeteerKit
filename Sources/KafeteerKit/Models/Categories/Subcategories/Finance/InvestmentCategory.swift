//
//  InvestmentCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Investment: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .finance
        public static var categoryIcon: Self = .investment
        public static var categoryName = String(localized: "Investment", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .investment(self) }
        
        case investment
        case dividends
        case interest
        case stocks
        case bonds
        case assets
        case realState
        case royaltyFee
        case digitalWallet
        
        public enum Keyword: String, KeywordRepresentable {
            case investment
            case dividends
            case interest
            case stocks
            case bonds
            case assets
            case realState
            case royaltyFee
            case digitalWallet
            
            public var value: Investment {
                switch self {
                case .investment: .investment
                case .dividends: .dividends
                case .interest: .interest
                case .stocks: .stocks
                case .bonds: .bonds
                case .assets: .assets
                case .realState: .realState
                case .royaltyFee: .royaltyFee
                case .digitalWallet: .digitalWallet
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .investment: "leaf" // 􀥲
            case .dividends: "chart.pie" // 􀑀
            case .interest: "percent" // 􀘾
            case .stocks: "chart.line.uptrend.xyaxis" // 􀑁
            case .bonds: "scroll" // 􀤏
            case .assets: "building.2" // 􀝒
            case .realState: "house.lodge" // 􁘮
            case .royaltyFee: "rosette" // 􀛯
            case .digitalWallet: "wallet.bifold" // 􂏰
            }
        }
        
        public var name: String {
            switch self {
            case .investment: String(localized: "Investment", bundle: .module)
            case .dividends: String(localized: "Dividends", bundle: .module)
            case .interest: String(localized: "Interest", bundle: .module)
            case .stocks: String(localized: "Stocks", bundle: .module)
            case .bonds: String(localized: "Bonds", bundle: .module)
            case .assets: String(localized: "Assets", bundle: .module)
            case .realState: String(localized: "Real State", bundle: .module)
            case .royaltyFee: String(localized: "Royalty Fee", bundle: .module)
            case .digitalWallet: String(localized: "Digital Wallet", bundle: .module)
            }
        }
    }
}
