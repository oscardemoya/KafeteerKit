//
//  FamilyCareCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum FamilyCare: String, CategoryRepresentable {
        public static var defaultValue: Self = .babysitting
        public static var categoryName = String(localized: "Family Care")
        public var asPaymentCategory: PaymentCategory { .familyCare(self) }
        
        case babysitting
        case childcare
        case pet
        
        public enum Keyword: String, KeywordRepresentable {
            case babysitting
            case babycare
            case baby
            case childcare
            case child
            case pet
            
            public var value: FamilyCare {
                switch self {
                case .babysitting, .babycare, .baby: .babysitting
                case .childcare, .child: .childcare
                case .pet: .pet
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .babysitting: "stroller" // 􁞖
            case .childcare: "figure.and.child.holdinghands" // 􁘁
            case .pet: "pawprint" // 􀾞
            }
        }
        
        public var name: String {
            switch self {
            case .babysitting: String(localized: "Babysitting")
            case .childcare: String(localized: "Childcare")
            case .pet: String(localized: "Pet")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
