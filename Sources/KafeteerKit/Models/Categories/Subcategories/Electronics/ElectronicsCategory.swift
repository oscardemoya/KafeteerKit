//
//  FurnitureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

public extension PaymentCategory {
    enum Electronics: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .electronics
        public static var categoryIcon: Self = .computer
        public static var categoryName = String(localized: "Electronics", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .electronics(self) }
        
        case computer
        case keyboard
        case peripheral
        case hardware
        case chip
        case disk
        case drive
        case cable
        case smartphone
        case television
        case videoGameConsole
        case speakers
        case gadgets
        case videoProjector
        case wifiRouter
        case printer
        case scanner
        case robot
        case drone

        public enum Keyword: String, KeywordRepresentable {
            case computer
            case keyboard
            case peripheral
            case hardware
            case chip
            case memory
            case disk
            case drive
            case cable
            case smartphone
            case television
            case tv
            case videoGameConsole
            case speakers
            case gadgets
            case console
            case videoProjector
            case wifiRouter
            case printer
            case scanner
            case robot
            case robotVacuum
            case drone

            public var value: Electronics {
                switch self {
                case .computer: .computer
                case .keyboard: .keyboard
                case .peripheral: .peripheral
                case .hardware: .hardware
                case .chip, .memory: .chip
                case .disk: .disk
                case .drive: .drive
                case .cable: .cable
                case .smartphone: .smartphone
                case .television, .tv: .television
                case .videoGameConsole, .console: .videoGameConsole
                case .speakers: .speakers
                case .gadgets: .gadgets
                case .videoProjector: .videoProjector
                case .wifiRouter: .wifiRouter
                case .printer: .printer
                case .scanner: .scanner
                case .robot, .robotVacuum: .robot
                case .drone: .drone
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .computer: "desktopcomputer" // 􀙗
            case .keyboard: "keyboard" // 􀇳
            case .peripheral: "computermouse" // 􀺣
            case .hardware: "cpu" // 􀫥
            case .chip: "memorychip" // 􀫦
            case .disk: "opticaldisc" // 􀢸
            case .drive: "externaldrive" // 􀤂
            case .cable: "cable.connector" // 􀺦
            case .smartphone: "smartphone" // 􁤫
            case .television: "tv" // 􀎲
            case .videoGameConsole: "arcade.stick.console" // 􂁠
            case .speakers: "hifispeaker" // 􀝎
            case .gadgets: "headphones" // 􀑈
            case .videoProjector: "videoprojector" // 􁒮
            case .wifiRouter: "wifi.router" // 􁓣
            case .printer: "printer" // 􀎚
            case .scanner: "scanner" // 􀪊
            case .robot: "robotic.vacuum" // 􂨭
            case .drone: "drone" // 􂖛
            }
        }
        
        public var name: String {
            switch self {
            case .computer: String(localized: "Computer", bundle: .module)
            case .keyboard: String(localized: "Keyboard", bundle: .module)
            case .peripheral: String(localized: "Peripheral", bundle: .module)
            case .hardware: String(localized: "Hardware", bundle: .module)
            case .chip: String(localized: "Chip", bundle: .module)
            case .disk: String(localized: "Disk", bundle: .module)
            case .drive: String(localized: "Drive", bundle: .module)
            case .cable: String(localized: "Cable", bundle: .module)
            case .smartphone: String(localized: "Smartphone", bundle: .module)
            case .television: String(localized: "TV", bundle: .module)
            case .videoGameConsole: String(localized: "Gaming Console", bundle: .module)
            case .speakers: String(localized: "Speakers", bundle: .module)
            case .gadgets: String(localized: "Gadgets", bundle: .module)
            case .videoProjector: String(localized: "Video Projector", bundle: .module)
            case .wifiRouter: String(localized: "WiFi Router", bundle: .module)
            case .printer: String(localized: "Printer", bundle: .module)
            case .scanner: String(localized: "Scanner", bundle: .module)
            case .robot: String(localized: "Robot", bundle: .module)
            case .drone: String(localized: "Drone", bundle: .module)
            }
        }
    }
}
