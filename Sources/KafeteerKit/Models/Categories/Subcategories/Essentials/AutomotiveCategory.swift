//
//  AutomotiveCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Automotive: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .essentials
        public static var categoryIcon: Self = .repair
        public static var categoryName = String(localized: "Automotive", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .maintenance(self) }
        
        case carWash
        case detailing
        case maintenance
        case repair
        case fuel
        case oil
        case battery
        case tires
        case autoParts

        public enum Keyword: String, KeywordRepresentable {
            case carWash
            case detailing
            case maintenance
            case repair
            case fuel
            case oil
            case battery
            case tires
            case autoParts

            public var value: Automotive {
                switch self {
                case .carWash: .carWash
                case .detailing: .detailing
                case .maintenance: .maintenance
                case .repair: .repair
                case .fuel: .fuel
                case .oil: .oil
                case .battery: .battery
                case .tires: .tires
                case .autoParts: .autoParts
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .carWash: "car.side" // 􁎷
            case .detailing: "sparkles" // 􀆿
            case .maintenance: "gear" // 􀍟
            case .repair: "wrench.and.screwdriver" // 􀤊
            case .fuel: "fuelpump" // 􀵞
            case .oil: "oilcan" // 􀿄
            case .battery: "minus.plus.batteryblock" // 􀫬
            case .tires: "tire" // 􂥰
            case .autoParts: "engine.combustion" // 􀾰
            }
        }
        
        public var name: String {
            switch self {
            case .carWash: String(localized: "Car Wash", bundle: .module)
            case .detailing: String(localized: "Detailing", bundle: .module)
            case .maintenance: String(localized: "Maintenance", bundle: .module)
            case .repair: String(localized: "Repair", bundle: .module)
            case .fuel: String(localized: "Fuel", bundle: .module)
            case .oil: String(localized: "Oil", bundle: .module)
            case .battery: String(localized: "Battery", bundle: .module)
            case .tires: String(localized: "Tires", bundle: .module)
            case .autoParts: String(localized: "Auto Parts", bundle: .module)
            }
        }
    }
}
