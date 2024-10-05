//
//  Array.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 10/5/24.
//

import Foundation

public extension Array {
    func unique<T: Hashable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        reduce(into: [Element]()) { result, element in
            if !result.contains(where: { $0[keyPath: keyPath] == element[keyPath: keyPath] }) {
                result.append(element)
            }
        }
    }
}
