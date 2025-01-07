//
//  LavenderColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct LavenderColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.lavender010)
        case .shade020: return Color(.lavender020)
        case .shade050: return Color(.lavender050)
        case .shade100: return Color(.lavender100)
        case .shade200: return Color(.lavender200)
        case .shade300: return Color(.lavender300)
        case .shade400: return Color(.lavender400)
        case .shade500: return Color(.lavender500)
        case .shade600: return Color(.lavender600)
        case .shade700: return Color(.lavender700)
        case .shade800: return Color(.lavender800)
        case .shade900: return Color(.lavender900)
        case .shade950: return Color(.lavender950)
        case .shade980: return Color(.lavender980)
        case .shade990: return Color(.lavender990)
        }
    }
}
