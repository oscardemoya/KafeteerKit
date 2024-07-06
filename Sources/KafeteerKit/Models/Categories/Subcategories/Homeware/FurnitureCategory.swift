//
//  FurnitureCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Furniture: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .homeware
        public static var categoryIcon: Self = .furniture
        public static var categoryName = String(localized: "Furniture", bundle: .module)
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
            case .furniture: String(localized: "Furniture", bundle: .module)
            case .sofa: String(localized: "Sofa", bundle: .module)
            case .chairs: String(localized: "Chairs", bundle: .module)
            case .table: String(localized: "Table", bundle: .module)
            case .bed: String(localized: "Bed", bundle: .module)
            case .desk: String(localized: "Desk", bundle: .module)
            case .bookshelf: String(localized: "Bookshelf", bundle: .module)
            case .cabinet: String(localized: "Cabinet", bundle: .module)
            }
        }
    }
}
