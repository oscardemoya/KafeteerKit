//
//  CelesteColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct CelesteColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.celeste010)
        case .shade020: return Color(.celeste020)
        case .shade050: return Color(.celeste050)
        case .shade100: return Color(.celeste100)
        case .shade200: return Color(.celeste200)
        case .shade300: return Color(.celeste300)
        case .shade400: return Color(.celeste400)
        case .shade500: return Color(.celeste500)
        case .shade600: return Color(.celeste600)
        case .shade700: return Color(.celeste700)
        case .shade800: return Color(.celeste800)
        case .shade900: return Color(.celeste900)
        case .shade950: return Color(.celeste950)
        case .shade980: return Color(.celeste980)
        case .shade990: return Color(.celeste990)
        }
    }
}
