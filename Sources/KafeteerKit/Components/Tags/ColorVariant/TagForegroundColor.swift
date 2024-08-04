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
            case .light: Color(.blue800)
            case .base: Color(.blue980)
            case .dark: Color(.blue050)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo800)
            case .base: Color(.indigo980)
            case .dark: Color(.indigo050)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple800)
            case .base: Color(.purple980)
            case .dark: Color(.purple050)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink800)
            case .base: Color(.pink980)
            case .dark: Color(.pink050)
            }
        case .red:
            switch variant {
            case .light: Color(.red800)
            case .base: Color(.red980)
            case .dark: Color(.red050)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange800)
            case .base: Color(.orange980)
            case .dark: Color(.orange050)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown800)
            case .base: Color(.brown980)
            case .dark: Color(.brown050)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow800)
            case .base: Color(.yellow980)
            case .dark: Color(.yellow050)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime800)
            case .base: Color(.lime980)
            case .dark: Color(.lime050)
            }
        case .green:
            switch variant {
            case .light: Color(.green800)
            case .base: Color(.green980)
            case .dark: Color(.green050)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal800)
            case .base: Color(.teal980)
            case .dark: Color(.teal050)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint800)
            case .base: Color(.mint980)
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
