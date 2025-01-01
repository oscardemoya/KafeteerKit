//
//  TagStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 21/07/24.
//

import SwiftUI

public struct TagStyle: ViewModifier {
    public enum Size {
        case compact
        case regular
        case large
        
        var font: Font {
            switch self {
            case .compact: .systemDefault(.caption)
            case .regular: .systemDefault(.body)
            case .large: .systemDefault(.title3)
            }
        }
        
        var fontWeight: Font.Weight {
            switch self {
            case .compact: .medium
            case .regular: .medium
            case .large: .medium
            }
        }
        
        var horizontalPadding: Padding {
            switch self {
            case .compact: .extraSmall
            case .regular: .small
            case .large: .medium
            }
        }
        
        var verticalPadding: Padding {
            switch self {
            case .compact: .quark
            case .regular: .nano
            case .large: .extraSmall
            }
        }
    }
    
    var colorVariant: TagColorVariant
    var size: Size = .regular
    
    public func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(size.font)
            .fontWeight(size.fontWeight)
            .fontDesign(.rounded)
            .padding(.horizontal, size.horizontalPadding)
            .padding(.vertical, size.verticalPadding)
            .background(colorVariant.backgroundColor)
            .foregroundStyle(colorVariant.foregroundColor)
            .clipShape(.capsule)
    }
}

public extension View {
    func tagStyle(_ colorVariant: TagColorVariant, size: TagStyle.Size = .regular) -> some View {
        self.modifier(TagStyle(colorVariant: colorVariant, size: size))
    }
}
