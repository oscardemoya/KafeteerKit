//
//  TagColorVariant.swift
//  
//
//  Created by Oscar De Moya on 21/07/24.
//

import SwiftUI

public struct TagColorVariant: Identifiable, Codable, RawRepresentable {
    public static let `default` = Self(tagColor: TagColor.default, variant: .base)
    public var id: String { "\(tagColor.id)-\(variant.rawValue)" }
    
    var tagColor: TagColor
    var variant: TagColor.Variant
    
    public init(tagColor: TagColor, variant: TagColor.Variant) {
        self.tagColor = tagColor
        self.variant = variant
    }
    
    public static var allCases: [Self] {
        TagColor.Variant.allCases.reduce(into: []) { result, variant in
            result.append(contentsOf: TagColor.allCases.map {
                TagColorVariant(tagColor: $0, variant: variant)
            })
        }
    }
    
    public static var count: Int {
        TagColor.allCases.count * TagColor.Variant.allCases.count
    }
    
    public var backgroundColor: Color {
        tagColor.backgroundColor(variant)
    }
    
    public var foregroundColor: Color {
        tagColor.foregroundColor(variant)
    }
    
    public var tintColor: Color {
        tagColor.tintColor(variant)
    }
    
    // Codable
    
    enum CodingKeys: String, CodingKey {
        case tagColor
        case variant
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        tagColor = try container.decode(TagColor.self, forKey: .tagColor)
        variant = try container.decode(TagColor.Variant.self, forKey: .variant)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tagColor, forKey: .tagColor)
        try container.encode(variant, forKey: .variant)
    }
    
    // RawRepresentable
    
    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8) else {
            return ""
        }
        return result
    }
    
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode(TagColorVariant.self, from: data) else {
            return nil
        }
        self.init(
            tagColor: result.tagColor,
            variant: result.variant
        )
    }
}

extension TagColorVariant: Hashable {
    public func hash(into hasher: inout Hasher) {
        var hasher = hasher
        hasher.combine(tagColor)
        hasher.combine(variant)
    }
}

public extension TagColor {
    enum Variant: String, Codable, CaseIterable, Identifiable {
        case light
        case base
        case dark

        public var id: Self { self }
    }
}

#Preview {
    List {
        ForEach(TagColorVariant.allCases) { colorVariant in
            TagView(tag: Tag(name: "Tag", colorVariant: colorVariant), size: .large)
                .listRowBackground(colorVariant.tintColor)
        }
    }
}
