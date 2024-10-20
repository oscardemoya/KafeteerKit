//
//  TagToggleStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 21/07/24.
//

import SwiftUI

public struct TagToggleStyle: ViewModifier {
    var colorVariant: TagColorVariant
    var size: TagStyle.Size = .regular
    var isSelected: Bool = false
    
    public func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(size.font)
            .fontWeight(size.fontWeight)
            .fontDesign(.rounded)
            .padding(.horizontal, size.horizontalPadding)
            .padding(.vertical, size.verticalPadding)
            .background(isSelected ? colorVariant.backgroundColor : .primaryInputBackground)
            .foregroundStyle(isSelected ? colorVariant.foregroundColor : .primaryInputForeground)
            .clipShape(.capsule)
    }
}

public extension View {
    func tagToggleStyle(_ colorVariant: TagColorVariant, size: TagStyle.Size = .regular, isSelected: Bool = false) -> some View {
        self.modifier(TagToggleStyle(colorVariant: colorVariant, size: size, isSelected: isSelected))
    }
}
