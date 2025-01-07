//
//  File.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    func tintColor(_ variant: Variant) -> Color {
        switch variant {
        case .light: colorProvider.color(shade: .shade020)
        case .mid: colorProvider.color(shade: .shade050)
        case .dark: colorProvider.color(shade: .shade020)
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
