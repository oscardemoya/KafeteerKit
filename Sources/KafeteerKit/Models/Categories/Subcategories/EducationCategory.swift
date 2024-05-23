//
//  EducationCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Education: String, CategoryRepresentable {
        case education
        case schoolSupplies
        case books
        case courses
        case tutors
        
        public enum Keyword: String, CaseInsensitive {
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
                case .courses: .courses
                case .tutors: .tutors
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .education: "graduationcap" // 􀫓
            case .schoolSupplies: "pencil.and.ruler" // 􁖆
            case .books: "book" // 􀉚
            case .courses: "books.vertical" // 􀬒
            case .tutors: "rectangle.inset.filled.and.person.filled" // 􁅀
            }
        }
        
        public var name: String {
            switch self {
            case .education: String(localized: "Education")
            case .schoolSupplies: String(localized: "School Supplies")
            case .books: String(localized: "Books")
            case .courses: String(localized: "Courses")
            case .tutors: String(localized: "Tutors")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
