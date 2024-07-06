//
//  FixtureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Fixture: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .homeware
        public static var categoryIcon: Self = .fixture
        public static var categoryName = String(localized: "Fixture", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .fixture(self) }
        
        case fixture
        case lightning
        case ceilingFan
        case door
        case window
        case toilet
        case sink
        case bathtub
        case shower

        public enum Keyword: String, KeywordRepresentable {
            case fixture
            case chandelier
            case lightning
            case ceilingFan
            case door
            case window
            case toilet
            case sink
            case bathtub
            case shower

            public var value: Fixture {
                switch self {
                case .fixture, .chandelier: .fixture
                case .lightning: .lightning
                case .ceilingFan: .ceilingFan
                case .door: .door
                case .window: .window
                case .toilet: .toilet
                case .sink: .sink
                case .bathtub: .bathtub
                case .shower: .shower
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .fixture: "chandelier" // 􁌦
            case .lightning: "light.recessed" // 􁎾
            case .ceilingFan: "fan.ceiling" // 􁌛
            case .door: "door.left.hand.closed" // 􁏝
            case .window: "window.vertical.closed" // 􁑬
            case .toilet: "toilet" // 􁐾
            case .sink: "sink" // 􁐪
            case .bathtub: "bathtub" // 􁐼
            case .shower: "shower" // 􁓂
            }
        }
        
        public var name: String {
            switch self {
            case .fixture: String(localized: "Fixture", bundle: .module)
            case .lightning: String(localized: "Lightning", bundle: .module)
            case .ceilingFan: String(localized: "Ceiling Fan", bundle: .module)
            case .door: String(localized: "Door", bundle: .module)
            case .window: String(localized: "Window", bundle: .module)
            case .toilet: String(localized: "Toilet", bundle: .module)
            case .sink: String(localized: "Sink", bundle: .module)
            case .bathtub: String(localized: "Bathtub", bundle: .module)
            case .shower: String(localized: "Shower", bundle: .module)
            }
        }
    }
}
