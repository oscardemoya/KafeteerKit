//
//  TagForegroundColor.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    func foregroundColor(_ variant: Variant) -> Color {
        switch self {
        case .navy:
            switch variant {
            case .light: Color(.navy800)
            case .mid: Color(.navy900)
            case .dark: Color(.navy050)
            }
        case .blue:
            switch variant {
            case .light: Color(.blue800)
            case .mid: Color(.blue900)
            case .dark: Color(.blue050)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo800)
            case .mid: Color(.indigo900)
            case .dark: Color(.indigo050)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple800)
            case .mid: Color(.purple900)
            case .dark: Color(.purple050)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink800)
            case .mid: Color(.pink900)
            case .dark: Color(.pink050)
            }
        case .magenta:
            switch variant {
            case .light: Color(.magenta800)
            case .mid: Color(.magenta900)
            case .dark: Color(.magenta050)
            }
        case .red:
            switch variant {
            case .light: Color(.red800)
            case .mid: Color(.red900)
            case .dark: Color(.red050)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange800)
            case .mid: Color(.orange900)
            case .dark: Color(.orange050)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown800)
            case .mid: Color(.brown900)
            case .dark: Color(.brown050)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow800)
            case .mid: Color(.yellow900)
            case .dark: Color(.yellow050)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime800)
            case .mid: Color(.lime900)
            case .dark: Color(.lime050)
            }
        case .green:
            switch variant {
            case .light: Color(.green800)
            case .mid: Color(.green900)
            case .dark: Color(.green050)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint800)
            case .mid: Color(.mint900)
            case .dark: Color(.mint050)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal800)
            case .mid: Color(.teal900)
            case .dark: Color(.teal050)
            }
        case .cyan:
            switch variant {
            case .light: Color(.cyan800)
            case .mid: Color(.cyan900)
            case .dark: Color(.cyan050)
            }
        case .gray:
            switch variant {
            case .light: Color(.gray800)
            case .mid: Color(.gray900)
            case .dark: Color(.gray050)
            }
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
