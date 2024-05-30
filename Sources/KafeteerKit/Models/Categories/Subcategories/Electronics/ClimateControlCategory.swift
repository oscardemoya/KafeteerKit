//
//  ClimateControlCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum ClimateControl: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .electronics
        public static var categoryIcon: Self = .airConditioner
        public static var categoryName = String(localized: "Climate Control")
        public var asPaymentCategory: PaymentCategory { .climateControl(self) }
        
        case thermostat
        case airConditioner
        case heater
        case fan
        case airPurifier
        case humidifier
        case dehumidifier

        public enum Keyword: String, KeywordRepresentable {
            case thermostat
            case airConditioner
            case heater
            case fan
            case airPurifier
            case humidifier
            case dehumidifier

            public var value: ClimateControl {
                switch self {
                case .thermostat: .thermostat
                case .airConditioner: .airConditioner
                case .heater: .heater
                case .fan: .fan
                case .airPurifier: .airPurifier
                case .humidifier: .humidifier
                case .dehumidifier: .dehumidifier
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .thermostat: "thermometer.snowflake" // 􀇫
            case .airConditioner: "air.conditioner.horizontal" // 􁓭
            case .heater: "heater.vertical" // 􁓩
            case .fan: "fan.floor" // 􁌚
            case .airPurifier: "air.purifier" // 􁓥
            case .humidifier: "humidifier" // 􁘘
            case .dehumidifier: "dehumidifier" // 􁓧
            }
        }
        
        public var name: String {
            switch self {
            case .thermostat: String(localized: "Thermostat")
            case .airConditioner: String(localized: "Air Cooler")
            case .heater: String(localized: "Heater")
            case .fan: String(localized: "Fan")
            case .airPurifier: String(localized: "Air Purifier")
            case .humidifier: String(localized: "Humidifier")
            case .dehumidifier: String(localized: "Dehumidifier")
            }
        }
        
    }
}
