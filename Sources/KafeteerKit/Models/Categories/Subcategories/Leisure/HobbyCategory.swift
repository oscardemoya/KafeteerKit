//
//  HobbyCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Hobby: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .leisure
        public static var categoryIcon: Self = .artSupplies
        public static var categoryName = String(localized: "Hobby", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .hobby(self) }
        
        case cookware
        case artSupplies
        case boardGame
        case puzzle
        case gardenTools
        case plant
        case camera
        case piano
        case guitar
        
        public enum Keyword: String, KeywordRepresentable {
            case cookware
            case cooking
            case baking
            case artSupplies
            case painting
            case drawing
            case crafting
            case boardGame
            case chess
            case puzzle
            case jigsaw
            case gardenTools
            case lawn
            case plant
            case camera
            case photography
            case piano
            case guitar
            
            public var value: Hobby {
                switch self {
                case .cookware, .cooking, .baking: .cookware
                case .artSupplies, .painting, .drawing, .crafting: .artSupplies
                case .boardGame, .chess: .boardGame
                case .puzzle, .jigsaw: .puzzle
                case .gardenTools, .lawn: .gardenTools
                case .plant: .plant
                case .camera, .photography: .camera
                case .piano: .piano
                case .guitar: .guitar
                }
            }
        }

        public var iconName: String {
            switch self {
            case .cookware: "frying.pan" // 􁐅
            case .artSupplies: "paintpalette" // 􀝥
            case .boardGame: "dice" // 􀺴
            case .puzzle: "puzzlepiece" // 􀤚
            case .gardenTools: "sprinkler" // 􁔌
            case .plant: "tree" // 􁝯
            case .camera: "camera" // 􀌞
            case .piano: "pianokeys" // 􀎏
            case .guitar: "guitars" // 􀑭
            }
        }
        
        public var name: String {
            switch self {
            case .cookware: String(localized: "Cookware", bundle: .module)
            case .artSupplies: String(localized: "Art Supplies", bundle: .module)
            case .boardGame: String(localized: "Board Game", bundle: .module)
            case .puzzle: String(localized: "Puzzle", bundle: .module)
            case .gardenTools: String(localized: "Garden Tools", bundle: .module)
            case .plant: String(localized: "Plant", bundle: .module)
            case .camera: String(localized: "Camera", bundle: .module)
            case .piano: String(localized: "Piano", bundle: .module)
            case .guitar: String(localized: "Guitar", bundle: .module)
            }
        }
    }
}
