//
//  HobbyCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Hobby: String, CategoryRepresentable {
        public static var defaultValue: Self = .artSupplies
        public static var categoryName = String(localized: "Hobby")
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
            case plants
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
                case .gardenTools, .plants, .lawn: .gardenTools
                case .plants: .plant
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
            case .gardenTools: "sprinkler.and.droplets" // 􁒼
            case .plant: "leaf" // 􀥲
            case .camera: "camera" // 􀌞
            case .piano: "pianokeys" // 􀎏
            case .guitar: "guitars" // 􀑭
            }
        }
        
        public var name: String {
            switch self {
            case .cookware: String(localized: "Cookware")
            case .artSupplies: String(localized: "Art Supplies")
            case .boardGame: String(localized: "Board Game")
            case .puzzle: String(localized: "Puzzle")
            case .gardenTools: String(localized: "Garden Tools")
            case .plant: String(localized: "Plant")
            case .camera: String(localized: "Camera")
            case .piano: String(localized: "Piano")
            case .guitar: String(localized: "Guitar")
            }
        }
    }
}
