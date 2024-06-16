//
//  File.swift
//  
//
//  Created by Oscar De Moya on 15/06/24.
//

import SwiftUI

@Observable
public class Tag: Codable, Identifiable {
    public var id: String = UUID().uuidString
    public var name: String = ""
    public var colorName: String?
    public var orderIndex: Int = 0

    // Local Fields
    public var canBeSaved: Bool { !name.isBlank }
    
    public var color: TagColor {
        get {
            guard let colorName else { return .default }
            return TagColor(rawValue: colorName) ?? .default
        }
        set {
            colorName = newValue.rawValue
        }
    }
    
    public init(id: String? = nil, name: String = "", colorName: String? = nil, orderIndex: Int = 0) {
        self.id = id ?? UUID().uuidString
        self.name = name
        self.colorName = colorName ?? TagColor.purple.rawValue
        self.orderIndex = orderIndex
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case colorName
        case orderIndex
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        colorName = try container.decodeIfPresent(String.self, forKey: .colorName)
        orderIndex = try container.decode(Int.self, forKey: .orderIndex)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(colorName, forKey: .colorName)
        try container.encodeIfPresent(orderIndex, forKey: .orderIndex)
    }
}

extension Tag: Hashable {
    public func hash(into hasher: inout Hasher) {
        var hasher = hasher
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(color)
        hasher.combine(orderIndex)
    }
}

extension Tag: Equatable {
    public static func == (lhs: Tag, rhs: Tag) -> Bool {
        guard lhs.name.uppercased() == rhs.name.uppercased() else { return false }
        return lhs.color == rhs.color
    }
}

extension Tag: Comparable {
    public static func < (lhs: Tag, rhs: Tag) -> Bool {
        return lhs.orderIndex < rhs.orderIndex
    }
}
