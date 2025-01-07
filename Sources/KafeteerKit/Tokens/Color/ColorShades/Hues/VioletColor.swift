//
//  VioletColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct VioletColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.violet010)
        case .shade020: return Color(.violet020)
        case .shade050: return Color(.violet050)
        case .shade100: return Color(.violet100)
        case .shade200: return Color(.violet200)
        case .shade300: return Color(.violet300)
        case .shade400: return Color(.violet400)
        case .shade500: return Color(.violet500)
        case .shade600: return Color(.violet600)
        case .shade700: return Color(.violet700)
        case .shade800: return Color(.violet800)
        case .shade900: return Color(.violet900)
        case .shade950: return Color(.violet950)
        case .shade980: return Color(.violet980)
        case .shade990: return Color(.violet990)
        }
    }
}
