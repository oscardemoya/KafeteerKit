//
//  Tag.swift
//
//
//  Created by Oscar De Moya on 15/06/24.
//

import SwiftUI

@Observable
public class Tag: Codable, Identifiable {
    public var id: String = UUID().uuidString
    public var name: String = ""
    public var colorVariant: TagColorVariant = .defaultValue
    public var orderIndex: Int = 0

    // Local Fields
    public var canBeSaved: Bool { !name.isBlank }
    
    public init(id: String? = nil, name: String = "", colorVariant: TagColorVariant = .defaultValue, orderIndex: Int = 0) {
        self.id = id ?? UUID().uuidString
        self.name = name
        self.colorVariant = colorVariant
        self.orderIndex = orderIndex
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case colorVariant
        case orderIndex
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        colorVariant = try container.decode(TagColorVariant.self, forKey: .colorVariant)
        orderIndex = try container.decode(Int.self, forKey: .orderIndex)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(colorVariant, forKey: .colorVariant)
        try container.encodeIfPresent(orderIndex, forKey: .orderIndex)
    }
}

extension Tag: Hashable {
    public func hash(into hasher: inout Hasher) {
        var hasher = hasher
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(colorVariant)
        hasher.combine(orderIndex)
    }
}

extension Tag: Equatable {
    public static func == (lhs: Tag, rhs: Tag) -> Bool {
        guard lhs.name.uppercased() == rhs.name.uppercased() else { return false }
        return lhs.name == rhs.name
    }
}

extension Tag: Comparable {
    public static func < (lhs: Tag, rhs: Tag) -> Bool {
        return lhs.orderIndex < rhs.orderIndex
    }
}
