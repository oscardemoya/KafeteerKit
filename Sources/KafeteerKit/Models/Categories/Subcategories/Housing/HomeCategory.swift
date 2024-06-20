//
//  HomeCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Home: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .housing
        public static var categoryIcon: Self = .mortgage
        public static var categoryName = String(localized: "Home")
        public var asPaymentCategory: PaymentCategory { .home(self) }
        
        case rent
        case mortgage
        case condoFee
        case plumber
        case renovation
        case homeSupplies
        case cleaningSupplies
        case storage

        public enum Keyword: String, KeywordRepresentable {
            case rent
            case mortgage
            case home
            case condoFee
            case plumber
            case renovation
            case painting
            case homeImprovement
            case homeSupplies
            case cleaningSupplies
            case broom
            case sweeping
            case mopping
            case trash
            case storage
            case organization

            public var value: Home {
                switch self {
                case .rent: .rent
                case .mortgage, .home: .mortgage
                case .condoFee: .condoFee
                case .plumber: .plumber
                case .renovation, .painting, .homeImprovement: .renovation
                case .homeSupplies: .homeSupplies
                case .cleaningSupplies, .broom, .sweeping, .mopping, .trash: .cleaningSupplies
                case .storage, .organization: .storage
                }
            }
        }

        public var iconName: String {
            switch self {            
            case .rent: "person.badge.key" // 􁏺
            case .mortgage: "house" // 􀎞
            case .condoFee: "building" // 􀮅
            case .plumber: "wrench.adjustable" // 􀎕
            case .renovation: "paintbrush" // 􀎑
            case .homeSupplies: "lightbulb" // 􀛭
            case .cleaningSupplies: "trash" // 􀈑
            case .storage: "archivebox" // 􀈭
            }
        }
        
        public var name: String {
            switch self {
            case .rent: String(localized: "Rent")
            case .mortgage: String(localized: "Mortgage")
            case .condoFee: String(localized: "Condo Fee")
            case .plumber: String(localized: "Plumber")
            case .renovation: String(localized: "Renovation")
            case .homeSupplies: String(localized: "Home Supplies")
            case .cleaningSupplies: String(localized: "Cleaning Supplies")
            case .storage: String(localized: "Storage")
            }
        }
    }
}
