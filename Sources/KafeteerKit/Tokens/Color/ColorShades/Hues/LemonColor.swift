//
//  LemonColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct LemonColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.lemon010)
        case .shade020: return Color(.lemon020)
        case .shade050: return Color(.lemon050)
        case .shade100: return Color(.lemon100)
        case .shade200: return Color(.lemon200)
        case .shade300: return Color(.lemon300)
        case .shade400: return Color(.lemon400)
        case .shade500: return Color(.lemon500)
        case .shade600: return Color(.lemon600)
        case .shade700: return Color(.lemon700)
        case .shade800: return Color(.lemon800)
        case .shade900: return Color(.lemon900)
        case .shade950: return Color(.lemon950)
        case .shade980: return Color(.lemon980)
        case .shade990: return Color(.lemon990)
        }
    }
}
