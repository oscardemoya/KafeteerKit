//
//  File.swift
//  
//
//  Created by Oscar De Moya on 22/07/24.
//

import SwiftUI

public extension TagColor {
    func tintColor(_ variant: Variant) -> Color {
        switch self {
        case .navy:
            switch variant {
            case .light: Color(.navy020)
            case .mid: Color(.navy050)
            case .dark: Color(.navy100)
            }
        case .blue:
            switch variant {
            case .light: Color(.blue020)
            case .mid: Color(.blue050)
            case .dark: Color(.blue100)
            }
        case .indigo:
            switch variant {
            case .light: Color(.indigo020)
            case .mid: Color(.indigo050)
            case .dark: Color(.indigo100)
            }
        case .purple:
            switch variant {
            case .light: Color(.purple020)
            case .mid: Color(.purple050)
            case .dark: Color(.purple100)
            }
        case .pink:
            switch variant {
            case .light: Color(.pink020)
            case .mid: Color(.pink050)
            case .dark: Color(.pink100)
            }
        case .magenta:
            switch variant {
            case .light: Color(.magenta020)
            case .mid: Color(.magenta050)
            case .dark: Color(.magenta100)
            }
        case .red:
            switch variant {
            case .light: Color(.red020)
            case .mid: Color(.red050)
            case .dark: Color(.red100)
            }
        case .orange:
            switch variant {
            case .light: Color(.orange020)
            case .mid: Color(.orange050)
            case .dark: Color(.orange100)
            }
        case .brown:
            switch variant {
            case .light: Color(.brown020)
            case .mid: Color(.brown050)
            case .dark: Color(.brown100)
            }
        case .yellow:
            switch variant {
            case .light: Color(.yellow020)
            case .mid: Color(.yellow050)
            case .dark: Color(.yellow100)
            }
        case .lime:
            switch variant {
            case .light: Color(.lime020)
            case .mid: Color(.lime050)
            case .dark: Color(.lime100)
            }
        case .green:
            switch variant {
            case .light: Color(.green020)
            case .mid: Color(.green050)
            case .dark: Color(.green100)
            }
        case .mint:
            switch variant {
            case .light: Color(.mint020)
            case .mid: Color(.mint050)
            case .dark: Color(.mint100)
            }
        case .teal:
            switch variant {
            case .light: Color(.teal020)
            case .mid: Color(.teal050)
            case .dark: Color(.teal100)
            }
        case .cyan:
            switch variant {
            case .light: Color(.cyan020)
            case .mid: Color(.cyan050)
            case .dark: Color(.cyan100)
            }
        case .gray:
            switch variant {
            case .light: Color(.gray020)
            case .mid: Color(.gray050)
            case .dark: Color(.gray100)
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
