//
//  EducationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Education: String, CategoryRepresentable {
        public static var categoryIcon: Self = .education
        public static var categoryName = String(localized: "Education")
        public var asPaymentCategory: PaymentCategory { .education(self) }
        
        case education
        case schoolSupplies
        case books
        case course
        case tutor
        
        public enum Keyword: String, KeywordRepresentable {
            case education
            case school
            case university
            case schoolSupplies
            case books
            case eBooks
            case courses
            case tutors
            
            public var value: Education {
                switch self {
                case .education, .school, .university: .education
                case .schoolSupplies: .schoolSupplies
                case .books, .eBooks: .books
                case .courses: .course
                case .tutors: .tutor
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .education: "graduationcap" // 􀫓
            case .schoolSupplies: "pencil.and.ruler" // 􁖆
            case .books: "book" // 􀉚
            case .course: "macwindow.and.cursorarrow" // 􁝸
            case .tutor: "rectangle.inset.filled.and.person.filled" // 􁅀
            }
        }
        
        public var name: String {
            switch self {
            case .education: String(localized: "Education")
            case .schoolSupplies: String(localized: "School Supplies")
            case .books: String(localized: "Books")
            case .course: String(localized: "Course")
            case .tutor: String(localized: "Tutor")
            }
        }
    }
}
