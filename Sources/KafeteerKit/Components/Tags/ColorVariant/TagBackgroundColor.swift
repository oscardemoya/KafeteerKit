//
//  TagBackgroundColor.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    public func backgroundColor(_ variant: Variant) -> Color {
        switch self {
        case .blue:
            switch variant {
            case .light: Color(.blue100)
            case .base: Color(.blue300)
            case .dark: Color(.blue500)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo100)
            case .base: Color(.indigo300)
            case .dark: Color(.indigo500)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple100)
            case .base: Color(.purple300)
            case .dark: Color(.purple500)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink100)
            case .base: Color(.pink300)
            case .dark: Color(.pink500)
            }
        case .red:
            switch variant {
            case .light: Color(.red100)
            case .base: Color(.red300)
            case .dark: Color(.red500)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange100)
            case .base: Color(.orange300)
            case .dark: Color(.orange500)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown100)
            case .base: Color(.brown300)
            case .dark: Color(.brown500)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow100)
            case .base: Color(.yellow300)
            case .dark: Color(.yellow500)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime100)
            case .base: Color(.lime300)
            case .dark: Color(.lime500)
            }
        case .green:
            switch variant {
            case .light: Color(.green100)
            case .base: Color(.green300)
            case .dark: Color(.green500)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal100)
            case .base: Color(.teal300)
            case .dark: Color(.teal500)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint100)
            case .base: Color(.mint300)
            case .dark: Color(.mint500)
            }
        }
    }
}

#Preview {
    List {
        ForEach(TagColorVariant.allCases) { colorVariant in
            TagView(tag: Tag(name: "Tag", colorVariant: colorVariant), size: .large)
                .listRowBackground(colorVariant.tintColor)
        }
    }
}
