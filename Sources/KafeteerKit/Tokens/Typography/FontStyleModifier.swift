//
//  FontStyleModifier.swift
//
//
//  Created by Oscar De Moya on 12/03/24.
//

import SwiftUI

public extension View {
    func style(_ style: TextStyle, weight: Font.Weight? = nil) -> some View {
        modifier(
            FontModifier(
                fontName: FontWeight.fontName(for: weight ?? style.weight),
                size: style.size,
                textStyle: style
            )
        )
    }
}

private struct FontModifier: ViewModifier {
    var fontName: String
    var size: CGFloat
    var textStyle: TextStyle
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: size, relativeTo: textStyle.textStyle))
    }
}
