//
//  ApplianceCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Appliance: String, CategoryRepresentable {
        public static var defaultValue: Self = .refrigerator
        public static var categoryName = String(localized: "Appliance")
        public var asPaymentCategory: PaymentCategory { .appliance(self) }
        
        case refrigerator
        case stove
        case oven
        case microwave
        case dishwasher
        case washer
        case dryer

        public enum Keyword: String, KeywordRepresentable {
            case appliance
            case refrigerator
            case stove
            case oven
            case microwave
            case dishwasher
            case washer
            case dryer
            
            public var value: Appliance {
                switch self {
                case .refrigerator, .appliance: .refrigerator
                case .stove: .stove
                case .oven: .oven
                case .microwave: .microwave
                case .dishwasher: .dishwasher
                case .washer: .washer
                case .dryer: .dryer
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .refrigerator: "refrigerator" // 􁐞
            case .stove: "stove" // 􁐦
            case .oven: "oven" // 􁐤
            case .microwave: "microwave" // 􁐨
            case .dishwasher: "dishwasher" // 􁐢
            case .washer: "washer" // 􁐠
            case .dryer: "dryer" // 􁖒
            }
        }
        
        public var name: String {
            switch self {
            case .refrigerator: String(localized: "Refrigerator")
            case .stove: String(localized: "Stove")
            case .oven: String(localized: "Oven")
            case .microwave: String(localized: "Microwave")
            case .dishwasher: String(localized: "Dishwasher")
            case .washer: String(localized: "Washer")
            case .dryer: String(localized: "Dryer")
            }
        }
        
    }
}
