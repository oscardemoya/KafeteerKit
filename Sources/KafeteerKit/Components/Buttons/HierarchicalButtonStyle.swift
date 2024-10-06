//
//  HierarchicalButtonStyle.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct HierarchicalButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled: Bool
    var hierarchy: Hierarchy = .primary
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.systemDefault(.headline))
            .fontWeight(.medium)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, .medium)
            .padding(.vertical, .small)
            .background(isEnabled ? backgroundColor : disabledBackgroundColor)
            .foregroundColor(isEnabled ? foregroundColor : disabledForegroundColor)
            .cornerStyle(.rounded(.medium))
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0)
            .transition(.opacity)
    }
    
    var backgroundColor: Color {
        switch hierarchy {
        case .primary: .primaryAccent
        case .secondary: .primaryTint
        case .tertiary: .tertiaryBackground
        case .quaternary: .clear
        }
    }
    
    var foregroundColor: Color {
        switch hierarchy {
        case .primary: .primaryAccentForeground
        case .secondary: .primaryTintForeground
        case .tertiary: .primaryTintForeground
        case .quaternary: .primaryTintForeground
        }
    }
    
    var disabledBackgroundColor: Color {
        switch hierarchy {
        case .primary: .primaryForeground.shade(.shade3).opacity(0.5)
        case .secondary: .primaryForeground.shade(.shade2).opacity(0.5)
        case .tertiary: .primaryForeground.shade(.shade1).opacity(0.5)
        case .quaternary: .clear
        }
    }
    
    var disabledForegroundColor: Color {
        switch hierarchy {
        case .primary: .primaryForeground.shade(.shade9).opacity(0.5)
        case .secondary: .primaryForeground.shade(.shade8).opacity(0.5)
        case .tertiary: .primaryForeground.shade(.shade7).opacity(0.5)
        case .quaternary: .primaryForeground.shade(.shade6).opacity(0.5)
        }
    }
}

public extension ButtonStyle where Self == HierarchicalButtonStyle {
    static var primary: Self { .init(hierarchy: .primary) }
    static var secondary: Self { .init(hierarchy: .secondary) }
    static var tertiary: Self { .init(hierarchy: .tertiary) }
    static var quaternary: Self { .init(hierarchy: .quaternary) }
    static func hierarchical(_ hierarchy: Hierarchy) -> Self {
        .init(hierarchy: hierarchy)
    }
}

#Preview {
    VStack(spacing: .large) {
        VStack {
            Button("Primary") {}.buttonStyle(.primary)
            Button("Secondary") {}.buttonStyle(.secondary)
            Button("Tertiary") {}.buttonStyle(.tertiary)
            Button("Quaternary") {}.buttonStyle(.quaternary)
        }
        VStack {
            Button("Primary") {}.buttonStyle(.primary).disabled(true)
            Button("Secondary") {}.buttonStyle(.secondary).disabled(true)
            Button("Tertiary") {}.buttonStyle(.tertiary).disabled(true)
            Button("Quaternary") {}.buttonStyle(.quaternary).disabled(true)
        }
    }
    .padding(.small)
}
