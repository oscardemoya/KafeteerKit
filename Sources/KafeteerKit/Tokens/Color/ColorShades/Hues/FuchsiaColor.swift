//
//  FuchsiaColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct FuchsiaColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.fuchsia010)
        case .shade020: return Color(.fuchsia020)
        case .shade050: return Color(.fuchsia050)
        case .shade100: return Color(.fuchsia100)
        case .shade200: return Color(.fuchsia200)
        case .shade300: return Color(.fuchsia300)
        case .shade400: return Color(.fuchsia400)
        case .shade500: return Color(.fuchsia500)
        case .shade600: return Color(.fuchsia600)
        case .shade700: return Color(.fuchsia700)
        case .shade800: return Color(.fuchsia800)
        case .shade900: return Color(.fuchsia900)
        case .shade950: return Color(.fuchsia950)
        case .shade980: return Color(.fuchsia980)
        case .shade990: return Color(.fuchsia990)
        }
    }
}
