//
//  TransportationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Transportation: String, CategoryRepresentable {
        public static var categoryIcon: Self = .car
        public static var categoryName = String(localized: "Transportation")
        public var asPaymentCategory: PaymentCategory { .transportation(self) }
        
        case car
        case commute
        case train
        case bike
        case scooter
        case flight
        case cruise
        case boat
        case delivery
        case move

        public enum Keyword: String, KeywordRepresentable {
            case car
            case commute
            case transit
            case train
            case bike
            case bicycle
            case motorcicle
            case scooter
            case flight
            case cruise
            case boat
            case sailboat
            case yatch
            case delivery
            case courier
            case move

            public var value: Transportation {
                switch self {
                case .car: .car
                case .commute, .transit: .commute
                case .train: .train
                case .bike, .bicycle, .motorcicle: .bike
                case .scooter: .scooter
                case .flight: .flight
                case .cruise, .boat: .cruise
                case .boat, .sailboat, .yatch: .boat
                case .delivery: .delivery
                case .move, .courier: .move
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .car: "car" // 􀙘
            case .commute: "bus" // 􀝈
            case .train: "tram" // 􀝆
            case .bike: "bicycle" // 􀡥
            case .scooter: "scooter" // 􁈌
            case .flight: "airplane" // 􀑓
            case .cruise: "ferry" // 􀸅
            case .boat: "sailboat" // 􁋴
            case .delivery: "shippingbox" // 􀐚
            case .move: "box.truck" // 􁁾
            }
        }
        
        public var name: String {
            switch self {
            case .car: String(localized: "Car")
            case .commute: String(localized: "Commute")
            case .train: String(localized: "Train")
            case .bike: String(localized: "Bike")
            case .scooter: String(localized: "Scooter")
            case .flight: String(localized: "Flight")
            case .cruise: String(localized: "Cruise")
            case .boat: String(localized: "Boat")
            case .delivery: String(localized: "Delivery")
            case .move: String(localized: "Move")
            }
        }
    }
}
