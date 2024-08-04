//
//  TagBackgroundColor.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    func backgroundColor(_ variant: Variant) -> Color {
        switch self {
        case .blue:
            switch variant {
            case .light: Color(.blue100)
            case .base: Color(.blue500)
            case .dark: Color(.blue800)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo100)
            case .base: Color(.indigo500)
            case .dark: Color(.indigo800)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple100)
            case .base: Color(.purple500)
            case .dark: Color(.purple800)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink100)
            case .base: Color(.pink500)
            case .dark: Color(.pink800)
            }
        case .red:
            switch variant {
            case .light: Color(.red100)
            case .base: Color(.red500)
            case .dark: Color(.red800)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange100)
            case .base: Color(.orange500)
            case .dark: Color(.orange800)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown100)
            case .base: Color(.brown500)
            case .dark: Color(.brown800)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow100)
            case .base: Color(.yellow500)
            case .dark: Color(.yellow800)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime100)
            case .base: Color(.lime500)
            case .dark: Color(.lime800)
            }
        case .green:
            switch variant {
            case .light: Color(.green100)
            case .base: Color(.green500)
            case .dark: Color(.green800)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal100)
            case .base: Color(.teal500)
            case .dark: Color(.teal800)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint100)
            case .base: Color(.mint500)
            case .dark: Color(.mint800)
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
