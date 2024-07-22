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
    
    init(tagColor: TagColor, variant: TagColor.Variant) {
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
    public enum Variant: String, Codable, CaseIterable, Identifiable {
        case base
        case dark
        case light

        public var id: Self { self }
    }
    
    public func backgroundColor(_ variant: Variant) -> Color {
        switch self {
        case .blue:
            switch variant {
            case .light: Color(.blue200)
            case .base: Color(.blue500)
            case .dark: Color(.blue800)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo200)
            case .base: Color(.indigo500)
            case .dark: Color(.indigo800)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple200)
            case .base: Color(.purple500)
            case .dark: Color(.purple800)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink200)
            case .base: Color(.pink500)
            case .dark: Color(.pink800)
            }
        case .red:
            switch variant {
            case .light: Color(.red200)
            case .base: Color(.red500)
            case .dark: Color(.red800)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange200)
            case .base: Color(.orange500)
            case .dark: Color(.orange800)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown200)
            case .base: Color(.brown500)
            case .dark: Color(.brown800)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow200)
            case .base: Color(.yellow500)
            case .dark: Color(.yellow800)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime200)
            case .base: Color(.lime500)
            case .dark: Color(.lime800)
            }
        case .green:
            switch variant {
            case .light: Color(.green200)
            case .base: Color(.green500)
            case .dark: Color(.green800)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal200)
            case .base: Color(.teal500)
            case .dark: Color(.teal800)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint200)
            case .base: Color(.mint500)
            case .dark: Color(.mint800)
            }
        }
    }
    
    public func foregroundColor(_ variant: Variant) -> Color {
        switch self {
        case .blue:
            switch variant {
            case .light: Color(.blue900)
            case .base: Color(.blue050)
            case .dark: Color(.blue300)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo900)
            case .base: Color(.indigo050)
            case .dark: Color(.indigo300)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple900)
            case .base: Color(.purple050)
            case .dark: Color(.purple300)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink900)
            case .base: Color(.pink050)
            case .dark: Color(.pink300)
            }
        case .red:
            switch variant {
            case .light: Color(.red900)
            case .base: Color(.red050)
            case .dark: Color(.red300)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange900)
            case .base: Color(.orange050)
            case .dark: Color(.orange300)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown900)
            case .base: Color(.brown050)
            case .dark: Color(.brown300)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow900)
            case .base: Color(.yellow050)
            case .dark: Color(.yellow300)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime900)
            case .base: Color(.lime050)
            case .dark: Color(.lime300)
            }
        case .green:
            switch variant {
            case .light: Color(.green900)
            case .base: Color(.green050)
            case .dark: Color(.green300)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal900)
            case .base: Color(.teal050)
            case .dark: Color(.teal300)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint900)
            case .base: Color(.mint050)
            case .dark: Color(.mint300)
            }
        }
    }
}
