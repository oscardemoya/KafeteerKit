//
//  FurnishingCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Furnishing: String, CategoryRepresentable {
        public static var defaultValue: Self = .furniture
        public static var categoryName = String(localized: "Furnishing")
        public var asPaymentCategory: PaymentCategory { .furnishing(self) }
        
        case furniture
        case sofa
        case chairs
        case table
        case bed
        case desk
        case bookshelf
        case cabinet
        case curtains
        case blinds
        case wallDecor
        case fixture
        case lightning
        case ceilingFan

        public enum Keyword: String, KeywordRepresentable {
            case furniture
            case furnishings
            case sofa
            case couch
            case chairs
            case table
            case bed
            case desk
            case bookshelf
            case cabinet
            case dresser
            case curtains
            case blinds
            case wallDecor
            case artFrame
            case pictureFrame
            case fixture
            case lightning
            case ceilingFan

            public var value: Furnishing {
                switch self {
                case .furniture, .furnishings: .furniture
                case .sofa, .couch: .sofa
                case .chairs: .chairs
                case .table: .table
                case .bed: .bed
                case .desk: .desk
                case .bookshelf: .bookshelf
                case .cabinet, .dresser: .cabinet
                case .curtains: .curtains
                case .blinds: .blinds
                case .wallDecor, .artFrame, .pictureFrame: .wallDecor
                case .fixture: .fixture
                case .lightning: .lightning
                case .ceilingFan: .ceilingFan
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .furniture: "chair.lounge" // 􁐴
            case .sofa: "sofa" // 􁐲
            case .chairs: "chair" // 􁐶
            case .table: "table.furniture" // 􁐰
            case .bed: "bed.double" // 􀙩
            case .desk: "lamp.desk"  // 􁎶
            case .bookshelf: "books.vertical" // 􀬒
            case .cabinet: "cabinet" // 􁐮
            case .curtains: "curtains.closed" // 􁑸
            case .blinds: "blinds.horizontal.closed" // 􁑶
            case .wallDecor: "photo.artframe" // 􁀶
            case .fixture: "light.recessed" // 􁌦
            case .lightning: "chandelier" // 􁌦
            case .ceilingFan: "fan.ceiling" // 􁌛
            }
        }
        
        public var name: String {
            switch self {
            case .furniture: String(localized: "Furniture")
            case .sofa: String(localized: "Sofa")
            case .chairs: String(localized: "Chairs")
            case .table: String(localized: "Table")
            case .bed: String(localized: "Bed")
            case .desk: String(localized: "Desk")
            case .bookshelf: String(localized: "Bookshelf")
            case .cabinet: String(localized: "Cabinet")
            case .curtains: String(localized: "Curtains")
            case .blinds: String(localized: "Blinds")
            case .wallDecor: String(localized: "Wall Decor")
            case .fixture: String(localized: "Fixture")
            case .lightning: String(localized: "Lightning")
            case .ceilingFan: String(localized: "Ceiling Fan")
            }
        }
        
    }
}


