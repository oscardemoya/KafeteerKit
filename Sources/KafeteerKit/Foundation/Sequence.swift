//
//  Sequence.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/15/25.
//

import Foundation

public extension Sequence {
    func asyncForEach(
        _ operation: (Element) async throws -> Void
    ) async rethrows {
        for element in self {
            try await operation(element)
        }
    }
}
