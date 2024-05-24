//
//  CategoryRepresentable.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import SwiftUI

public protocol CategoryRepresentable: RawRepresentable, Equatable, CaseInsensitive, IconRepresentable {
    associatedtype Keyword: KeywordRepresentable
    static var defaultValue: Self { get }
    static var categoryName: String { get }
    var name: String { get }
    var keywords: [String] { get }
    var asPaymentCategory: PaymentCategory { get }
    init?(keyword: Self.Keyword.RawValue)
}

public protocol KeywordRepresentable: CaseInsensitive {
    associatedtype Category: CategoryRepresentable
    var value: Category { get }
}

public extension CategoryRepresentable {
    init?(keyword: Self.Keyword.RawValue) {
        guard let value = Self.Keyword(rawValue: keyword)?.value as? Self else { return nil }
        self = value
    }
}
