//
//  FurnishingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Furnishing: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .home
        public static var categoryIcon: Self = .curtain
        public static var categoryName = String(localized: "Furnishing", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .furnishing(self) }
        
        case curtain
        case blinds
        case rollerShades
        case wallDecor
        case homeDecor

        public enum Keyword: String, KeywordRepresentable {
            case curtain
            case blinds
            case rollerShades
            case blackout
            case wallDecor
            case artFrame
            case pictureFrame
            case homeDecor
            case sculpture

            public var value: Furnishing {
                switch self {
                case .curtain: .curtain
                case .blinds: .blinds
                case .rollerShades, .blackout: .rollerShades
                case .wallDecor, .artFrame, .pictureFrame: .wallDecor
                case .homeDecor, .sculpture: .homeDecor
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .curtain: "curtains.closed" // 􁑸
            case .blinds: "blinds.horizontal.closed" // 􁑶
            case .rollerShades: "roller.shade.closed" // 􁑺
            case .wallDecor: "photo.artframe" // 􁀶
            case .homeDecor: "person.bust" // 􁗡
            }
        }
        
        public var name: String {
            switch self {
            case .curtain: String(localized: "Curtain", bundle: .module)
            case .blinds: String(localized: "Blinds", bundle: .module)
            case .rollerShades: String(localized: "Roller Shade", bundle: .module)
            case .wallDecor: String(localized: "Wall Decor", bundle: .module)
            case .homeDecor: String(localized: "Home Decor", bundle: .module)
            }
        }
    }
}
