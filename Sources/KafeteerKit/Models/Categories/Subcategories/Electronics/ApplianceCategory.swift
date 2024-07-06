//
//  ApplianceCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Appliance: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .electronics
        public static var categoryIcon: Self = .refrigerator
        public static var categoryName = String(localized: "Appliance", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .appliance(self) }
        
        case refrigerator
        case stove
        case oven
        case microwave
        case dishwasher
        case washer
        case dryer
        case securityCamera
        case sensor
        case powerOutlet

        public enum Keyword: String, KeywordRepresentable {
            case appliance
            case refrigerator
            case stove
            case oven
            case microwave
            case dishwasher
            case washer
            case dryer
            case securityCamera
            case sensor
            case powerOutlet

            public var value: Appliance {
                switch self {
                case .refrigerator, .appliance: .refrigerator
                case .stove: .stove
                case .oven: .oven
                case .microwave: .microwave
                case .dishwasher: .dishwasher
                case .washer: .washer
                case .dryer: .dryer
                case .securityCamera: .securityCamera
                case .sensor: .sensor
                case .powerOutlet: .powerOutlet
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
            case .securityCamera: "web.camera" // 􁒲
            case .sensor: "sensor" // 􁔉
            case .powerOutlet: "poweroutlet.strip" // 􁌲
            }
        }
        
        public var name: String {
            switch self {
            case .refrigerator: String(localized: "Refrigerator", bundle: .module)
            case .stove: String(localized: "Stove", bundle: .module)
            case .oven: String(localized: "Oven", bundle: .module)
            case .microwave: String(localized: "Microwave", bundle: .module)
            case .dishwasher: String(localized: "Dishwasher", bundle: .module)
            case .washer: String(localized: "Washer", bundle: .module)
            case .dryer: String(localized: "Dryer", bundle: .module)
            case .securityCamera: String(localized: "Security Camera", bundle: .module)
            case .sensor: String(localized: "Sensor", bundle: .module)
            case .powerOutlet: String(localized: "Power Outlet", bundle: .module)
            }
        }
        
    }
}
