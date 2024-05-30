//
//  FurnitureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Furniture: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .homeware
        public static var categoryIcon: Self = .furniture
        public static var categoryName = String(localized: "Furniture")
        public var asPaymentCategory: PaymentCategory { .furniture(self) }
        
        case furniture
        case sofa
        case chairs
        case table
        case bed
        case desk
        case bookshelf
        case cabinet

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

            public var value: Furniture {
                switch self {
                case .furniture, .furnishings: .furniture
                case .sofa, .couch: .sofa
                case .chairs: .chairs
                case .table: .table
                case .bed: .bed
                case .desk: .desk
                case .bookshelf: .bookshelf
                case .cabinet, .dresser: .cabinet
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
            }
        }
    }
}
