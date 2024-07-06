//
//  FamilyCareCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum FamilyCare: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .wellness
        public static var categoryIcon: Self = .babysitting
        public static var categoryName = String(localized: "Family Care", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .familyCare(self) }
        
        case babysitting
        case babyGear
        case feeding
        case childcare
        case toys
        case petCare
        case dogWalker
        case elderySitting
        case houseSitting
        case protectiveEquipment
        
        public enum Keyword: String, KeywordRepresentable {
            case babysitting
            case babycare
            case baby
            case babyGear
            case highchair
            case bouncer
            case jumper
            case walker
            case feeding
            case childcare
            case child
            case toys
            case christmas
            case pet
            case petCare
            case dogWalker
            case elderySitting
            case houseSitting
            case protectiveEquipment
            
            public var value: FamilyCare {
                switch self {
                case .babysitting, .babycare, .baby: .babysitting
                case .babyGear, .highchair, .bouncer, .jumper, .walker: .babyGear
                case .feeding: .feeding
                case .childcare, .child: .childcare
                case .toys, .christmas: .toys
                case .petCare, .pet: .petCare
                case .dogWalker: .dogWalker
                case .elderySitting: .elderySitting
                case .houseSitting: .houseSitting
                case .protectiveEquipment: .protectiveEquipment
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .babysitting: "stroller" // 􁞖
            case .feeding: "cylinder.split.1x2" // 􀡓
            case .babyGear: "studentdesk" // 􀑔
            case .childcare: "figure.and.child.holdinghands" // 􁘁
            case .toys: "teddybear" // 􀲬
            case .petCare: "pawprint" // 􀾞
            case .dogWalker: "dog" // 􂀆
            case .houseSitting: "house.lodge" // 􁘭
            case .elderySitting: "eyeglasses" // 􀖆
            case .protectiveEquipment: "facemask" // 􁃌
            }
        }
        
        public var name: String {
            switch self {
            case .babysitting: String(localized: "Babysitting", bundle: .module)
            case .babyGear: String(localized: "Baby Gear", bundle: .module)
            case .feeding: String(localized: "Feeding", bundle: .module)
            case .childcare: String(localized: "Childcare", bundle: .module)
            case .toys: String(localized: "Toys", bundle: .module)
            case .petCare: String(localized: "Pet Care", bundle: .module)
            case .dogWalker: String(localized: "Dog Walker", bundle: .module)
            case .houseSitting: String(localized: "House Sitting", bundle: .module)
            case .elderySitting: String(localized: "Eldery Sitter", bundle: .module)
            case .protectiveEquipment: String(localized: "Protective Equipment", bundle: .module)
            }
        }
    }
}
