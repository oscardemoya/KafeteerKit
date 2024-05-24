//
//  CategoryRepresentable.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import SwiftUI

public protocol CategoryRepresentable: RawRepresentable, Equatable, CaseInsensitive, IconRepresentable {
    associatedtype Keyword: CaseInsensitive
    var name: String { get }
    var keywords: [String] { get }
}

public extension CategoryRepresentable where Self: RawRepresentable, Self.RawValue == String, Self.Keyword.RawValue == String {
    static func == (lhs: Self, rhs: Self) -> Bool { lhs.stringValue == lhs.stringValue }
}
