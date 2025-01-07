//
//  TagBackgroundColor.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    func backgroundColor(_ variant: Variant) -> Color {
        switch variant {
        case .light: colorProvider.color(shade: .shade100)
        case .mid: colorProvider.color(shade: .shade400)
        case .dark: colorProvider.color(shade: .shade800)
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
