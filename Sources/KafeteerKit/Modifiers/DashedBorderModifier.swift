//
//  DashedBorderModifier.swift
//
//
//  Created by Oscar De Moya on 6/07/24.
//

import SwiftUI
import KafeteerKit

public extension View {
    func dashedBorder(cornerRadius: CornerRadius = .medium,
                      borderWidth: BorderWidth = .nano,
                      borderColor: Color = .borderColor,
                      dash: [CGFloat] = [Spacing.quark.value]) -> some View {
        modifier(
            DashedBorderModifier(
                cornerRadius: cornerRadius,
                borderWidth: borderWidth,
                borderColor: borderColor,
                dash: dash
            )
        )
    }
}

private struct DashedBorderModifier: ViewModifier {
    var cornerRadius: CornerRadius
    var borderWidth: BorderWidth
    var borderColor: Color
    var dash: [CGFloat]
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius.rawValue, style: .continuous)
                    .strokeBorder(style: StrokeStyle(lineWidth: borderWidth.rawValue, dash: dash))
                    .foregroundColor(borderColor)
            )
    }
}
