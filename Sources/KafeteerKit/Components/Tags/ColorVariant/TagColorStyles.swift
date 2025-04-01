//
//  TagColorStyles.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    func backgroundColor(_ variant: Variant) -> Color {
        switch variant {
        case .light: colorProvider.color(shade: .shade100)
        case .mid: colorProvider.color(shade: .shade600)
        case .dark: colorProvider.color(shade: .shade950)
        }
    }
    
    func foregroundColor(_ variant: Variant) -> Color {
        switch variant {
        case .light: colorProvider.color(shade: .shade950)
        case .mid: colorProvider.color(shade: .shade010)
        case .dark: colorProvider.color(shade: .shade050)
        }
    }
    
    func tintColor(_ variant: Variant) -> Color {
        switch variant {
        case .light: colorProvider.color(shade: .shade010)
        case .mid: colorProvider.color(shade: .shade020)
        case .dark: colorProvider.color(shade: .shade050)
        }
    }
}

#Preview {
    List {
        ForEach(TagColorVariant.allCasesByColor) { colorVariant in
            TagView(tag: Tag(name: "Tag", colorVariant: colorVariant), size: .large)
                .listRowBackground(colorVariant.tintColor)
        }
    }
}
