//
//  ClimateControlCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum ClimateControl: String, CategoryRepresentable {
        public static var categoryIcon: Self = .airConditioner
        public static var categoryName = String(localized: "Climate Control")
        public var asPaymentCategory: PaymentCategory { .climateControl(self) }
        
        case airConditioner
        case heater
        case fan
        case humidifier
        case dehumidifier
        case airPurifier

        public enum Keyword: String, KeywordRepresentable {
            case airConditioner
            case heater
            case fan
            case humidifier
            case dehumidifier
            case airPurifier

            public var value: ClimateControl {
                switch self {
                case .airConditioner: .airConditioner
                case .heater: .heater
                case .fan: .fan
                case .humidifier: .humidifier
                case .dehumidifier: .dehumidifier
                case .airPurifier: .airPurifier
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .airConditioner: "air.conditioner.horizontal" // 􁓭
            case .heater: "heater.vertical" // 􁓩
            case .fan: "fan.floor" // 􁌚
            case .humidifier: "humidifier" // 􁘘
            case .dehumidifier: "dehumidifier" // 􁓧
            case .airPurifier: "air.purifier" // 􁓥
            }
        }
        
        public var name: String {
            switch self {
            case .airConditioner: String(localized: "Air Cooler")
            case .heater: String(localized: "Heater")
            case .fan: String(localized: "Fan")
            case .humidifier: String(localized: "Humidifier")
            case .dehumidifier: String(localized: "Dehumidifier")
            case .airPurifier: String(localized: "Air Purifier")
            }
        }
        
    }
}
