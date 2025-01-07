//
//  AppleColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct AppleColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.apple010)
        case .shade020: return Color(.apple020)
        case .shade050: return Color(.apple050)
        case .shade100: return Color(.apple100)
        case .shade200: return Color(.apple200)
        case .shade300: return Color(.apple300)
        case .shade400: return Color(.apple400)
        case .shade500: return Color(.apple500)
        case .shade600: return Color(.apple600)
        case .shade700: return Color(.apple700)
        case .shade800: return Color(.apple800)
        case .shade900: return Color(.apple900)
        case .shade950: return Color(.apple950)
        case .shade980: return Color(.apple980)
        case .shade990: return Color(.apple990)
        }
    }
}
