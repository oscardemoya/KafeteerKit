//
//  KnowledgeCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Knowledge: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .growth
        public static var categoryIcon: Self = .education
        public static var categoryName = String(localized: "Knowledge", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .education(self) }
        
        case education
        case schoolSupplies
        case books
        case newspaper
        case magazine
        case course
        case learning
        case tutor
        
        public enum Keyword: String, KeywordRepresentable {
            case education
            case school
            case university
            case schoolSupplies
            case books
            case eBooks
            case newspaper
            case magazine
            case course
            case learning
            case tutors
            
            public var value: Knowledge {
                switch self {
                case .education, .school, .university: .education
                case .schoolSupplies: .schoolSupplies
                case .books, .eBooks: .books
                case .newspaper: .newspaper
                case .magazine: .magazine
                case .course: .course
                case .learning: .learning
                case .tutors: .tutor
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .education: "graduationcap" // 􀫓
            case .schoolSupplies: "pencil.and.ruler" // 􁖆
            case .books: "book" // 􀉚
            case .newspaper: "newspaper" // 􀤦
            case .magazine: "magazine" // 􁂾
            case .course: "macwindow.and.cursorarrow" // 􁝸
            case .learning: "brain" // 􀯐
            case .tutor: "rectangle.inset.filled.and.person.filled" // 􁅀
            }
        }
        
        public var name: String {
            switch self {
            case .education: String(localized: "Education", bundle: .module)
            case .schoolSupplies: String(localized: "School Supplies", bundle: .module)
            case .books: String(localized: "Books", bundle: .module)
            case .newspaper: String(localized: "Newspaper", bundle: .module)
            case .magazine: String(localized: "Magazine", bundle: .module)
            case .course: String(localized: "Course", bundle: .module)
            case .learning: String(localized: "Learning Platform", bundle: .module)
            case .tutor: String(localized: "Tutor", bundle: .module)
            }
        }
    }
}
