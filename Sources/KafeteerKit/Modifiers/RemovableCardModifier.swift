//
//  RemovableCardModifier.swift
//
//
//  Created by Oscar De Moya on 6/07/24.
//

import SwiftUI
import KafeteerKit

private struct RemovableCardModifier: ViewModifier {
    var backgroundColor: Color = .tertiaryBackground
    var foregroundColor: Color = .tertiaryForeground
    var onRemove: (() -> Void)?
    
    func body(content: Content) -> some View {
        HStack {
            content
            if let onRemove {
                Spacer()
                Image(systemName: "xmark")
                    .foregroundColor(foregroundColor)
                    .padding(.extraSmall)
                    .onTapGesture {
                        onRemove()
                    }
            }
        }
        .padding(.leading, .medium)
        .padding(.trailing, onRemove == nil ? .medium : .small)
        .padding(.vertical, .small)
        .frame(maxWidth: .infinity)
        .background(backgroundColor)
        .borderStyle(.stroke(.nano), borderColor: foregroundColor.opacity(0.5), cornerStyle: .rounded(.medium))
        .shadowStyle(.subtle)
    }
}

public extension View {
    func removableCard(
        backgroundColor: Color = .tertiaryBackground,
        foregroundColor: Color = .tertiaryForeground,
        onRemove: (() -> Void)? = nil
    ) -> some View {
        modifier(
            RemovableCardModifier(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                onRemove: onRemove
            )
        )
    }
}
