//
//  CategoryRepresentable.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import SwiftUI

public protocol CategoryRepresentable: RawRepresentable, Equatable, CaseInsensitive, IconRepresentable {
    associatedtype Keyword: KeywordRepresentable
    static var lifeArea: LifeArea { get }
    static var categoryIcon: Self { get }
    static var categoryName: String { get }
    static var allValues: [PaymentCategory] { get }
    var name: String { get }
    var keywords: [String] { get }
    var asPaymentCategory: PaymentCategory { get }
    init?(keyword: Self.Keyword.RawValue)
}

public protocol KeywordRepresentable: CaseInsensitive {
    associatedtype Category: CategoryRepresentable
    var value: Category { get }
}

public extension CategoryRepresentable where Self.RawValue == String, Keyword.RawValue == String {
    init?(keyword: Keyword.RawValue) {
        guard let value = Keyword(rawValue: keyword)?.value as? Self else { return nil }
        self = value
    }
    
    static var allValues: [PaymentCategory] {
        allCases.map(\.asPaymentCategory)
    }
    
    var keywords: [String] {
        Self.Keyword.allCases.filter({ $0.rawValue == self.rawValue }).map(\.rawValue)
    }
}
