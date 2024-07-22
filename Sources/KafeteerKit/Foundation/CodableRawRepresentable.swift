//
//  CodableRawRepresentable.swift
//
//
//  Created by Oscar De Moya on 21/07/24.
//

import Foundation

public extension RawRepresentable where RawValue == String, Self: Codable {
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let rawValue = try container.decode(String.self)
        do {
            self.init(rawValue: rawValue)!
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(rawValue)
    }
}
