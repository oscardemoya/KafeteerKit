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
        public static var categoryIcon: Self = .familyCare
        public static var categoryName = String(localized: "Family Care", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .familyCare(self) }
        
        case familyCare
        case fatherhood
        case motherhood
        case relationship
        case childcare
        case babysitting
        case babyGear
        case feeding
        case toys
        case playground
        case petCare
        case dogWalker
        case elderySitting
        case houseSitting
        
        public enum Keyword: String, KeywordRepresentable {
            case familyCare
            case family
            case fatherhood
            case male
            case man
            case motherhood
            case female
            case woman
            case relationship
            case marriage
            case couple
            case childcare
            case child
            case babysitting
            case babycare
            case baby
            case babyGear
            case highchair
            case bouncer
            case jumper
            case walker
            case feeding
            case toys
            case playground
            case park
            case christmas
            case pet
            case petCare
            case dogWalker
            case elderySitting
            case houseSitting
            
            public var value: FamilyCare {
                switch self {
                case .familyCare, .family: .familyCare
                case .fatherhood, .man, .male: .fatherhood
                case .motherhood, .woman, .female: .motherhood
                case .relationship, .marriage, .couple: .relationship
                case .childcare, .child: .childcare
                case .babysitting, .babycare, .baby: .babysitting
                case .babyGear, .highchair, .bouncer, .jumper, .walker: .babyGear
                case .feeding: .feeding
                case .toys, .christmas: .toys
                case .playground, .park: .playground
                case .petCare, .pet: .petCare
                case .dogWalker: .dogWalker
                case .elderySitting: .elderySitting
                case .houseSitting: .houseSitting
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .familyCare: "figure.2.and.child.holdinghands" // 􁗇
            case .fatherhood: "figure.stand" // 􀳾
            case .motherhood: "figure.stand.dress" // 􂡩
            case .relationship: "figure.2.left.holdinghands" // 􂝗
            case .childcare: "figure.and.child.holdinghands" // 􁘁
            case .babysitting: "stroller" // 􁞖
            case .feeding: "cylinder.split.1x2" // 􀡓
            case .babyGear: "studentdesk" // 􀑔
            case .toys: "teddybear" // 􀲬
            case .playground: "balloon.2" // 􁓷
            case .petCare: "pawprint" // 􀾞
            case .dogWalker: "dog" // 􂀆
            case .houseSitting: "house.lodge" // 􁘭
            case .elderySitting: "eyeglasses" // 􀖆
            }
        }
        
        public var name: String {
            switch self {
            case .familyCare: String(localized: "Family Care", bundle: .module)
            case .fatherhood: String(localized: "Fatherhood", bundle: .module)
            case .motherhood: String(localized: "Motherhood", bundle: .module)
            case .relationship: String(localized: "Relationship", bundle: .module)
            case .childcare: String(localized: "Childcare", bundle: .module)
            case .babysitting: String(localized: "Babysitting", bundle: .module)
            case .babyGear: String(localized: "Baby Gear", bundle: .module)
            case .feeding: String(localized: "Feeding", bundle: .module)
            case .toys: String(localized: "Toys", bundle: .module)
            case .playground: String(localized: "Playground", bundle: .module)
            case .petCare: String(localized: "Pet Care", bundle: .module)
            case .dogWalker: String(localized: "Dog Walker", bundle: .module)
            case .houseSitting: String(localized: "House Sitting", bundle: .module)
            case .elderySitting: String(localized: "Eldery Sitter", bundle: .module)
            }
        }
    }
}
