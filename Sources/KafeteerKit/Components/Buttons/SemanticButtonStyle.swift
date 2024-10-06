//
//  SemanticButtonStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 9/8/24.
//


import SwiftUI

public struct SemanticButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled: Bool
    var feedback: Feedback = .success
    
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
        switch feedback {
        case .success: .successColor
        case .warning: .warningColor
        case .failure: .dangerColor
        }
    }
    
    var foregroundColor: Color {
        switch feedback {
        case .success: .successForeground
        case .warning: .warningForeground
        case .failure: .dangerForeground
        }
    }
    
    var disabledBackgroundColor: Color {
        switch feedback {
        case .success: .primaryForeground.shade(.shade2).opacity(0.5)
        case .warning: .primaryForeground.shade(.shade2).opacity(0.5)
        case .failure: .primaryForeground.shade(.shade2).opacity(0.5)
        }
    }
    
    var disabledForegroundColor: Color {
        switch feedback {
        case .success: .primaryForeground.shade(.shade8).opacity(0.5)
        case .warning: .primaryForeground.shade(.shade8).opacity(0.5)
        case .failure: .primaryForeground.shade(.shade8).opacity(0.5)
        }
    }
}

public extension ButtonStyle where Self == SemanticButtonStyle {
    static var success: Self { .init(feedback: .success) }
    static var warning: Self { .init(feedback: .warning) }
    static var failure: Self { .init(feedback: .failure) }
    static func semantic(_ feedback: Feedback) -> Self {
        .init(feedback: feedback)
    }
}

#Preview {
    VStack(spacing: .large) {
        VStack {
            Button("Success") {}.buttonStyle(.success)
            Button("Warning") {}.buttonStyle(.warning)
            Button("Failure") {}.buttonStyle(.failure)
        }
        VStack {
            Button("Success") {}.buttonStyle(.success).disabled(true)
            Button("Warning") {}.buttonStyle(.warning).disabled(true)
            Button("Failure") {}.buttonStyle(.failure).disabled(true)
        }
    }
    .padding(.small)
}
