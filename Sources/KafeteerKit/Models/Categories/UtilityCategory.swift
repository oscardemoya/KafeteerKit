//
//  UtilityCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

extension PaymentCategory {
    public enum Utility: String, CategoryRepresentable {
        case water
        case liquid
        case sewer
        case energy
        case electricity
        case internet
        case broadband
        case cable
        case phone
        case cellphone
        case gas
        case trash
        
        public enum Keyword: String, CaseInsensitive {
            case water
            case liquid
            case sewer
            case energy
            case electricity
            case internet
            case broadband
            case cable
            case phone
            case cellphone
            case cell
            case mobile
            case gas
            case trash
            
            public var value: Utility {
                switch self {
                case .water: .water
                case .liquid: .liquid
                case .sewer: .sewer
                case .energy: .energy
                case .electricity: .electricity
                case .internet: .internet
                case .broadband: .broadband
                case .cable: .cable
                case .phone: .phone
                case .cell, .cellphone, .mobile: .cellphone
                case .gas: .gas
                case .trash: .trash
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .water: "spigot" // 􁒾
            case .liquid: "drop" // 􀠑
            case .sewer: "pipe.and.drop" // 􁓝
            case .energy: "bolt" // 􀋥
            case .electricity: "lightbulb.max" // 􁷘
            case .internet: "wifi" // 􀙇
            case .broadband: "wifi.router" // 􁓣
            case .cable: "tv" // 􀎲
            case .phone: "phone" // 􀌾
            case .cellphone: "cellularbars" // 􀭧
            case .gas: "flame" // 􀙬
            case .trash: "trash" // 􀈑
            }
        }
        
        public var name: String {
            switch self {
            case .water: String(localized: LocalizedStringResource("Water"))
            case .liquid: String(localized: LocalizedStringResource("Liquid"))
            case .sewer: String(localized: LocalizedStringResource("Sewer"))
            case .energy: String(localized: LocalizedStringResource("Energy"))
            case .electricity: String(localized: LocalizedStringResource("Electricity"))
            case .internet: String(localized: LocalizedStringResource("Internet"))
            case .broadband: String(localized: LocalizedStringResource("Broadband"))
            case .cable: String(localized: LocalizedStringResource("Cable"))
            case .phone: String(localized: LocalizedStringResource("Phone"))
            case .cellphone: String(localized: LocalizedStringResource("Cellphone"))
            case .gas: String(localized: LocalizedStringResource("Gas"))
            case .trash: String(localized: LocalizedStringResource("Trash"))
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
