//
//  ButtonStyle.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct HierarchicalButtonStyle: ButtonStyle {
    var hierarchy: Hierarchy = .primary
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .padding()
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerStyle(.rounded(.medium))
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0)
            .transition(.opacity)
    }
    
    var backgroundColor: Color {
        switch hierarchy {
        case .primary: .primaryBrand
        case .secondary: .primaryTint.opacity(0.4)
        case .tertiary: .primaryForeground.shade(.shade3).opacity(0.15)
        }
    }
    
    var foregroundColor: Color {
        switch hierarchy {
        case .primary: Color(.lightOverlay)
        case .secondary: .primaryBrand
        case .tertiary: .primaryBrand
        }
    }
}

public extension ButtonStyle where Self == HierarchicalButtonStyle {
    static var primary: HierarchicalButtonStyle { .init(hierarchy: .primary) }
    static var secondary: HierarchicalButtonStyle { .init(hierarchy: .secondary) }
    static var tertiary: HierarchicalButtonStyle { .init(hierarchy: .tertiary) }
}

#Preview {
    VStack {
        Button("Primary", action: {}).buttonStyle(.primary)
        Button("Secondary", action: {}).buttonStyle(.secondary)
        Button("Tertiary", action: {}).buttonStyle(.tertiary)
    }
    .padding()
}
