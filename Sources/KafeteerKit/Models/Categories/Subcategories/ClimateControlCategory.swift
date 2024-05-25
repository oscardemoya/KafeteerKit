//
//  ClimateControlCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum ClimateControl: String, CategoryRepresentable {
        public static var defaultValue: Self = .airConditioner
        public static var categoryName = String(localized: "ClimateControl")
        public var asPaymentCategory: PaymentCategory { .climateControl(self) }
        
        case airConditioner
        case heater
        case airPurifier
        case humidifier
        case dehumidifier

        public enum Keyword: String, KeywordRepresentable {
            case airConditioner
            case heater
            case airPurifier
            case humidifier
            case dehumidifier
            
            public var value: ClimateControl {
                switch self {
                case .airConditioner: .airConditioner
                case .heater: .heater
                case .airPurifier: .airPurifier
                case .humidifier: .humidifier
                case .dehumidifier: .dehumidifier
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .airConditioner: "air.conditioner.horizontal" // 􁓭
            case .heater: "heater.vertical" // 􁓩
            case .airPurifier: "air.purifier" // 􁓥
            case .humidifier: "humidifier" // 􁘘
            case .dehumidifier: "dehumidifier" // 􁓧
            
            }
        }
        
        public var name: String {
            switch self {
            case .airConditioner: String(localized: "Air Cooler")
            case .heater: String(localized: "Heater")
            case .airPurifier: String(localized: "Air Purifier")
            case .humidifier: String(localized: "Humidifier")
            case .dehumidifier: String(localized: "Dehumidifier")
            }
        }
        
    }
}
