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
        case .blue:
            switch variant {
            case .light: Color(.blue700)
            case .base: Color(.blue950)
            case .dark: Color(.blue050)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo700)
            case .base: Color(.indigo950)
            case .dark: Color(.indigo050)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple700)
            case .base: Color(.purple950)
            case .dark: Color(.purple050)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink700)
            case .base: Color(.pink950)
            case .dark: Color(.pink050)
            }
        case .red:
            switch variant {
            case .light: Color(.red700)
            case .base: Color(.red950)
            case .dark: Color(.red050)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange700)
            case .base: Color(.orange950)
            case .dark: Color(.orange050)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown700)
            case .base: Color(.brown950)
            case .dark: Color(.brown050)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow700)
            case .base: Color(.yellow950)
            case .dark: Color(.yellow050)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime700)
            case .base: Color(.lime950)
            case .dark: Color(.lime050)
            }
        case .green:
            switch variant {
            case .light: Color(.green700)
            case .base: Color(.green950)
            case .dark: Color(.green050)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal700)
            case .base: Color(.teal950)
            case .dark: Color(.teal050)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint700)
            case .base: Color(.mint950)
            case .dark: Color(.mint050)
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
