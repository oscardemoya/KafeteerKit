//
//  EmeraldColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct EmeraldColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.emerald010)
        case .shade020: return Color(.emerald020)
        case .shade050: return Color(.emerald050)
        case .shade100: return Color(.emerald100)
        case .shade200: return Color(.emerald200)
        case .shade300: return Color(.emerald300)
        case .shade400: return Color(.emerald400)
        case .shade500: return Color(.emerald500)
        case .shade600: return Color(.emerald600)
        case .shade700: return Color(.emerald700)
        case .shade800: return Color(.emerald800)
        case .shade900: return Color(.emerald900)
        case .shade950: return Color(.emerald950)
        case .shade980: return Color(.emerald980)
        case .shade990: return Color(.emerald990)
        }
    }
}
