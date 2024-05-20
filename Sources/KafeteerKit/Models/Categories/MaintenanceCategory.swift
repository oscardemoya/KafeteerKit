//
//  MaintenanceCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Maintenance: String, CategoryRepresentable {
        case maintenance
        case repair
        case fuel
        case oil
        case battery
        case tires
        case airConditioner
        case airPurifier
        case plumber
        case renovation

        public enum Keyword: String, CaseInsensitive {
            case maintenance
            case repair
            case fuel
            case oil
            case battery
            case tires
            case airConditioner
            case airPurifier
            case plumber
            case renovation
            case painting
            case homeImprovement

            public var value: Maintenance {
                switch self {
                case .maintenance: .maintenance
                case .repair: .repair
                case .fuel: .fuel
                case .oil: .oil
                case .battery: .battery
                case .tires: .tires
                case .airConditioner: .airConditioner
                case .airPurifier: .airPurifier
                case .plumber: .plumber
                case .renovation, .painting, .homeImprovement: .renovation
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
            case .airConditioner: "air.conditioner.horizontal" // 􁓭
            case .airPurifier: "air.purifier" // 􁓥
            case .plumber: "spigot" // 􁒾
            case .renovation: "paintbrush" // 􀎑
            }
        }
        
        public var name: String {
            switch self {
            case .maintenance: String(localized: LocalizedStringResource("Maintenance"))
            case .repair: String(localized: LocalizedStringResource("Repair"))
            case .fuel: String(localized: LocalizedStringResource("Fuel"))
            case .oil: String(localized: LocalizedStringResource("Oil"))
            case .battery: String(localized: LocalizedStringResource("Battery"))
            case .tires: String(localized: LocalizedStringResource("Tires"))
            case .airConditioner: String(localized: LocalizedStringResource("Air Conditioner"))
            case .airPurifier: String(localized: LocalizedStringResource("Air Purifier"))
            case .plumber: String(localized: LocalizedStringResource("Plumber"))
            case .renovation: String(localized: LocalizedStringResource("Renovation"))
            }
        }
    }
}
