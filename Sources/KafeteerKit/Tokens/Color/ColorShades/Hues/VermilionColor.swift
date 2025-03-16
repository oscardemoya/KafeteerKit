//
//  VermilionColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct VermilionColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.vermilion010)
        case .shade020: return Color(.vermilion020)
        case .shade050: return Color(.vermilion050)
        case .shade100: return Color(.vermilion100)
        case .shade200: return Color(.vermilion200)
        case .shade300: return Color(.vermilion300)
        case .shade400: return Color(.vermilion400)
        case .shade500: return Color(.vermilion500)
        case .shade600: return Color(.vermilion600)
        case .shade700: return Color(.vermilion700)
        case .shade800: return Color(.vermilion800)
        case .shade900: return Color(.vermilion900)
        case .shade950: return Color(.vermilion950)
        case .shade980: return Color(.vermilion980)
        case .shade990: return Color(.vermilion990)
        }
    }
}
