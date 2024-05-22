//
//  TransportationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Transportation: String, CategoryRepresentable {
        case car
        case bike
        case train
        case commute
        case pass
        case delivery
        case supplier
        case flight
        case cruise
        case boat

        public enum Keyword: String, CaseInsensitive {
            case car
            case bike
            case bicycle
            case motorcicle
            case train
            case commute
            case pass
            case delivery
            case supplier
            case transit
            case flight
            case cruise
            case boat

            public var value: Transportation {
                switch self {
                case .car: .car
                case .bike, .bicycle, .motorcicle: .bike
                case .train: .train
                case .commute, .transit: .commute
                case .pass: .pass
                case .delivery: .delivery
                case .supplier: .supplier
                case .flight: .flight
                case .cruise: .cruise
                case .boat: .boat
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .car: "car" // 􀙘
            case .bike: "bicycle" // 􀡥
            case .train: "tram" // 􀝆
            case .commute: "bus" // 􀝈
            case .pass: "wallet.pass" // 􀟾
            case .delivery: "shippingbox" // 􀐚
            case .supplier: "box.truck" // 􁁾
            case .flight: "airplane" // 􀑓
            case .cruise: "ferry" // 􀸅
            case .boat: "sailboat" // 􁋴
            }
        }
        
        public var name: String {
            switch self {
            case .car: String(localized: LocalizedStringResource("Car"))
            case .bike: String(localized: LocalizedStringResource("Bike"))
            case .train: String(localized: LocalizedStringResource("Train"))
            case .commute: String(localized: LocalizedStringResource("Commute"))
            case .pass: String(localized: LocalizedStringResource("Pass"))
            case .delivery: String(localized: LocalizedStringResource("Delivery"))
            case .supplier: String(localized: LocalizedStringResource("Supplier"))
            case .flight: String(localized: LocalizedStringResource("Flight"))
            case .cruise: String(localized: LocalizedStringResource("Cruise"))
            case .boat: String(localized: LocalizedStringResource("Boat"))
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
