//
//  ButtonStyle.swift
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
            .padding(.small)
            .background(isEnabled ? backgroundColor : disabledBackgroundColor)
            .foregroundColor(isEnabled ? foregroundColor : disabledForegroundColor)
            .cornerStyle(.rounded(.medium))
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0)
            .transition(.opacity)
    }
    
    var backgroundColor: Color {
        switch hierarchy {
        case .primary: .primaryAccent
        case .secondary: .primaryTint.opacity(0.4)
        case .tertiary: .quaternaryForeground.opacity(0.3)
        case .quaternary: .tertiaryBackground
        }
    }
    
    var foregroundColor: Color {
        switch hierarchy {
        case .primary: Color(.lightOverlay)
        case .secondary: .primaryAccent
        case .tertiary: .secondaryAccent
        case .quaternary: .primaryAccent
        }
    }
    
    var disabledBackgroundColor: Color {
        switch hierarchy {
        case .primary: .primaryForeground.shade(.shade2).opacity(0.5)
        case .secondary: .primaryForeground.shade(.shade3).opacity(0.5)
        case .tertiary: .primaryForeground.shade(.shade4).opacity(0.5)
        case .quaternary: .primaryForeground.shade(.shade5).opacity(0.5)
        }
    }
    
    var disabledForegroundColor: Color {
        switch hierarchy {
        case .primary: .primaryForeground.shade(.shade6).opacity(0.5)
        case .secondary: .primaryForeground.shade(.shade7).opacity(0.5)
        case .tertiary: .primaryForeground.shade(.shade8).opacity(0.5)
        case .quaternary: .primaryForeground.shade(.shade9).opacity(0.5)
        }
    }
}

public extension ButtonStyle where Self == HierarchicalButtonStyle {
    static func hierarchical(_ hierarchy: Hierarchy) -> Self { .init(hierarchy: hierarchy) }
    static var primary: Self { .init(hierarchy: .primary) }
    static var secondary: Self { .init(hierarchy: .secondary) }
    static var tertiary: Self { .init(hierarchy: .tertiary) }
    static var quaternary: Self { .init(hierarchy: .quaternary) }
}

#Preview {
    VStack {
        Button(String("Title"), action: {}).buttonStyle(.primary)
        Button(String("Title"), action: {}).buttonStyle(.secondary)
        Button(String("Title"), action: {}).buttonStyle(.tertiary)
        Button(String("Title"), action: {}).buttonStyle(.quaternary)
    }
    .padding()
}
