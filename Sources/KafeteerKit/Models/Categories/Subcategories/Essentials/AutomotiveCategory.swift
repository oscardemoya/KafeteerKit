//
//  AutomotiveCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Automotive: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .essentials
        public static var categoryIcon: Self = .repair
        public static var categoryName = String(localized: "Automotive")
        public var asPaymentCategory: PaymentCategory { .maintenance(self) }
        
        case maintenance
        case repair
        case fuel
        case oil
        case battery
        case tires

        public enum Keyword: String, KeywordRepresentable {
            case maintenance
            case repair
            case fuel
            case oil
            case battery
            case tires

            public var value: Automotive {
                switch self {
                case .maintenance: .maintenance
                case .repair: .repair
                case .fuel: .fuel
                case .oil: .oil
                case .battery: .battery
                case .tires: .tires
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .maintenance: "gear" // 􀍟
            case .repair: "wrench.and.screwdriver" // 􀤊
            case .fuel: "fuelpump" // 􀵞
            case .oil: "oilcan" // 􀿄
            case .battery: "minus.plus.batteryblock" // 􀫬
            case .tires: "car.side" // 􁎷
            }
        }
        
        public var name: String {
            switch self {
            case .maintenance: String(localized: "Maintenance")
            case .repair: String(localized: "Repair")
            case .fuel: String(localized: "Fuel")
            case .oil: String(localized: "Oil")
            case .battery: String(localized: "Battery")
            case .tires: String(localized: "Tires")
            }
        }
    }
}
