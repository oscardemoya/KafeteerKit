//
//  TransportationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Transportation: String, CategoryRepresentable {
        public static var defaultValue: Self = .car
        public static var categoryName = String(localized: "Transportation")
        public var asPaymentCategory: PaymentCategory { .transportation(self) }
        
        case car
        case train
        case commute
        case bike
        case scooter
        case pass
        case delivery
        case flight
        case cruise
        case boat

        public enum Keyword: String, KeywordRepresentable {
            case car
            case train
            case commute
            case bike
            case bicycle
            case motorcicle
            case scooter
            case pass
            case delivery
            case courier
            case transit
            case flight
            case cruise
            case boat

            public var value: Transportation {
                switch self {
                case .car: .car
                case .train: .train
                case .commute, .transit: .commute
                case .bike, .bicycle, .motorcicle: .bike
                case .scooter: .scooter
                case .pass: .pass
                case .delivery, .courier: .delivery
                case .flight: .flight
                case .cruise: .cruise
                case .boat: .boat
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .car: "car" // 􀙘
            case .train: "tram" // 􀝆
            case .commute: "bus" // 􀝈
            case .bike: "bicycle" // 􀡥
            case .scooter: "scooter" // 􁈌
            case .pass: "wallet.pass" // 􀟾
            case .delivery: "box.truck" // 􁁾
            case .flight: "airplane" // 􀑓
            case .cruise: "ferry" // 􀸅
            case .boat: "sailboat" // 􁋴
            }
        }
        
        public var name: String {
            switch self {
            case .car: String(localized: "Car")
            case .train: String(localized: "Train")
            case .commute: String(localized: "Commute")
            case .bike: String(localized: "Bike")
            case .scooter: String(localized: "Scooter")
            case .pass: String(localized: "Pass")
            case .delivery: String(localized: "Delivery")
            case .flight: String(localized: "Flight")
            case .cruise: String(localized: "Cruise")
            case .boat: String(localized: "Boat")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
