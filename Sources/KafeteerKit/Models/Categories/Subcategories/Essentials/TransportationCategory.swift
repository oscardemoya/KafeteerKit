//
//  TransportationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Transportation: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .essentials
        public static var categoryIcon: Self = .car
        public static var categoryName = String(localized: "Transportation", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .transportation(self) }
        
        case car
        case parking
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
            case parking
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
                case .parking: .parking
                case .commute, .transit: .commute
                case .train: .train
                case .bike, .bicycle, .motorcicle: .bike
                case .scooter: .scooter
                case .flight: .flight
                case .cruise: .cruise
                case .boat, .sailboat, .yatch: .boat
                case .delivery: .delivery
                case .move, .courier: .move
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .car: "car" // 􀙘
            case .parking: "p.square" // 􀂲
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
            case .car: String(localized: "Car", bundle: .module)
            case .parking: String(localized: "Parking", bundle: .module)
            case .commute: String(localized: "Commute", bundle: .module)
            case .train: String(localized: "Train", bundle: .module)
            case .bike: String(localized: "Bike", bundle: .module)
            case .scooter: String(localized: "Scooter", bundle: .module)
            case .flight: String(localized: "Flight", bundle: .module)
            case .cruise: String(localized: "Cruise", bundle: .module)
            case .boat: String(localized: "Boat", bundle: .module)
            case .delivery: String(localized: "Delivery", bundle: .module)
            case .move: String(localized: "Move", bundle: .module)
            }
        }
    }
}
