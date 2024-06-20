//
//  UtilityCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

extension PaymentCategory {
    public enum Utility: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .housing
        public static var categoryIcon: Self = .waterSupply
        public static var categoryName = String(localized: "Utility")
        public var asPaymentCategory: PaymentCategory { .utility(self) }
        
        case waterSupply
        case sewer
        case electricity
        case gas
        case trash
        case internet
        case tvProvider
        case phone
        case cellphone
        
        public enum Keyword: String, KeywordRepresentable {
            case waterSupply
            case sewer
            case electricity
            case energy
            case power
            case gas
            case trash
            case internet
            case broadband
            case tvProvider
            case phone
            case cellphone
            case cell
            case mobile
            
            public var value: Utility {
                switch self {
                case .waterSupply: .waterSupply
                case .sewer: .sewer
                case .electricity, .energy, .power: .electricity
                case .gas: .gas
                case .trash: .trash
                case .internet, .broadband: .internet
                case .tvProvider: .tvProvider
                case .phone: .phone
                case .cell, .cellphone, .mobile: .cellphone
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .waterSupply: "spigot" // 􁒾
            case .sewer: "pipe.and.drop" // 􁓝
            case .electricity: "powercord" // 􁣷
            case .gas: "flame" // 􀙬
            case .trash: "trash" // 􀈑
            case .internet: "wifi" // 􀙇
            case .tvProvider: "cable.coaxial" // 􁊒
            case .phone: "phone" // 􀌾
            case .cellphone: "cellularbars" // 􀭧
            }
        }
        
        public var name: String {
            switch self {
            case .waterSupply: String(localized: "Water Supply")
            case .sewer: String(localized: "Sewer")
            case .electricity: String(localized: "Electricity")
            case .gas: String(localized: "Gas")
            case .trash: String(localized: "Trash")
            case .internet: String(localized: "Internet")
            case .tvProvider: String(localized: "TV Provider")
            case .phone: String(localized: "Phone")
            case .cellphone: String(localized: "Cellphone")
            }
        }
    }
}
