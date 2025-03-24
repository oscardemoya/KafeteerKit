//
//  FillButtonStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/22/25.
//

import SwiftUI

public struct FillButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled: Bool
    
    var backgroundColor: Color
    var foregroundColor: Color
    var disabledBackgroundColor: Color
    var disabledForegroundColor: Color
    
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
}

public extension ButtonStyle where Self == FillButtonStyle {
    static func filled(
        backgroundColor: Color = .primaryAccent,
        foregroundColor: Color = .primaryAccentForeground,
        disabledBackgroundColor: Color = .primaryForeground.shade(.shade3).opacity(0.5),
        disabledForegroundColor: Color = .primaryForeground.shade(.shade9).opacity(0.5)
    ) -> Self {
        .init(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            disabledBackgroundColor: disabledBackgroundColor,
            disabledForegroundColor: disabledForegroundColor
        )
    }
}

#Preview {
    VStack(spacing: .large) {
        VStack {
            Button("Title") {}
                .buttonStyle(
                    .filled(backgroundColor: .secondaryAccent, foregroundColor: .secondaryAccentForeground)
                )
        }
        VStack {
            Button("Title") {}
                .buttonStyle(
                    .filled(disabledBackgroundColor: .primaryForeground.shade(.shade8).opacity(0.5))
                )
                .disabled(true)
        }
    }
    .padding(.small)
}
