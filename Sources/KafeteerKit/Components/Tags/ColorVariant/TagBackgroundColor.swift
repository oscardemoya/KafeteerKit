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
        case .navy:
            switch variant {
            case .light: Color(.navy100)
            case .mid: Color(.navy400)
            case .dark: Color(.navy800)
            }
        case .blue:
            switch variant {
            case .light: Color(.blue100)
            case .mid: Color(.blue400)
            case .dark: Color(.blue800)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo100)
            case .mid: Color(.indigo400)
            case .dark: Color(.indigo800)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple100)
            case .mid: Color(.purple400)
            case .dark: Color(.purple800)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink100)
            case .mid: Color(.pink400)
            case .dark: Color(.pink800)
            }
        case .magenta:
            switch variant {
            case .light: Color(.magenta100)
            case .mid: Color(.magenta400)
            case .dark: Color(.magenta800)
            }
        case .red:
            switch variant {
            case .light: Color(.red100)
            case .mid: Color(.red400)
            case .dark: Color(.red800)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange100)
            case .mid: Color(.orange400)
            case .dark: Color(.orange800)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown100)
            case .mid: Color(.brown400)
            case .dark: Color(.brown800)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow100)
            case .mid: Color(.yellow400)
            case .dark: Color(.yellow800)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime100)
            case .mid: Color(.lime400)
            case .dark: Color(.lime800)
            }
        case .green:
            switch variant {
            case .light: Color(.green100)
            case .mid: Color(.green400)
            case .dark: Color(.green800)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint100)
            case .mid: Color(.mint400)
            case .dark: Color(.mint800)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal100)
            case .mid: Color(.teal400)
            case .dark: Color(.teal800)
            }
        case .cyan:
            switch variant {
            case .light: Color(.cyan100)
            case .mid: Color(.cyan400)
            case .dark: Color(.cyan800)
            }
        case .white:
            switch variant {
            case .light: Color(.white100)
            case .mid: Color(.white400)
            case .dark: Color(.white800)
            }
        case .gray:
            switch variant {
            case .light: Color(.gray100)
            case .mid: Color(.gray400)
            case .dark: Color(.gray800)
            }
        case .black:
            switch variant {
            case .light: Color(.black100)
            case .mid: Color(.black400)
            case .dark: Color(.black800)
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
