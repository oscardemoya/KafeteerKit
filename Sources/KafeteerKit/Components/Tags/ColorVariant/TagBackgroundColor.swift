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
            case .base: Color(.blue400)
            case .dark: Color(.blue800)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo100)
            case .base: Color(.indigo400)
            case .dark: Color(.indigo800)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple100)
            case .base: Color(.purple400)
            case .dark: Color(.purple800)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink100)
            case .base: Color(.pink400)
            case .dark: Color(.pink800)
            }
        case .red:
            switch variant {
            case .light: Color(.red100)
            case .base: Color(.red400)
            case .dark: Color(.red800)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange100)
            case .base: Color(.orange400)
            case .dark: Color(.orange800)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown100)
            case .base: Color(.brown400)
            case .dark: Color(.brown800)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow100)
            case .base: Color(.yellow400)
            case .dark: Color(.yellow800)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime100)
            case .base: Color(.lime400)
            case .dark: Color(.lime800)
            }
        case .green:
            switch variant {
            case .light: Color(.green100)
            case .base: Color(.green400)
            case .dark: Color(.green800)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal100)
            case .base: Color(.teal400)
            case .dark: Color(.teal800)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint100)
            case .base: Color(.mint400)
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
