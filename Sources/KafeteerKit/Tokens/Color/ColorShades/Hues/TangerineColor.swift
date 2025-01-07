//
//  TangerineColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct TangerineColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.tangerine010)
        case .shade020: return Color(.tangerine020)
        case .shade050: return Color(.tangerine050)
        case .shade100: return Color(.tangerine100)
        case .shade200: return Color(.tangerine200)
        case .shade300: return Color(.tangerine300)
        case .shade400: return Color(.tangerine400)
        case .shade500: return Color(.tangerine500)
        case .shade600: return Color(.tangerine600)
        case .shade700: return Color(.tangerine700)
        case .shade800: return Color(.tangerine800)
        case .shade900: return Color(.tangerine900)
        case .shade950: return Color(.tangerine950)
        case .shade980: return Color(.tangerine980)
        case .shade990: return Color(.tangerine990)
        }
    }
}
