//
//  HomeCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Home: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .home
        public static var categoryIcon: Self = .mortgage
        public static var categoryName = String(localized: "Home", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .home(self) }
        
        case rent
        case mortgage
        case condoFee
        case plumber
        case renovation
        case homeSupplies
        case cleaningSupplies
        case storage
        case homeProtection
        case homeSecurity

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
            case homeProtection
            case fireProtection
            case homeSecurity
            case lock

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
                case .homeProtection, .fireProtection: .homeProtection
                case .homeSecurity, .lock: .homeSecurity
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
            case .homeProtection: "fire.extinguisher" // 􂦈
            case .homeSecurity: "lock" // 􀎠
            }
        }
        
        public var name: String {
            switch self {
            case .rent: String(localized: "Rent", bundle: .module)
            case .mortgage: String(localized: "Mortgage", bundle: .module)
            case .condoFee: String(localized: "Condo Fee", bundle: .module)
            case .plumber: String(localized: "Plumber", bundle: .module)
            case .renovation: String(localized: "Renovation", bundle: .module)
            case .homeSupplies: String(localized: "Home Supplies", bundle: .module)
            case .cleaningSupplies: String(localized: "Cleaning Supplies", bundle: .module)
            case .storage: String(localized: "Storage", bundle: .module)
            case .homeProtection: String(localized: "Home Protection", bundle: .module)
            case .homeSecurity: String(localized: "Home Security", bundle: .module)
            }
        }
    }
}
