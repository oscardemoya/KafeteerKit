//
//  PinkColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct PinkColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.pink010)
        case .shade020: return Color(.pink020)
        case .shade050: return Color(.pink050)
        case .shade100: return Color(.pink100)
        case .shade200: return Color(.pink200)
        case .shade300: return Color(.pink300)
        case .shade400: return Color(.pink400)
        case .shade500: return Color(.pink500)
        case .shade600: return Color(.pink600)
        case .shade700: return Color(.pink700)
        case .shade800: return Color(.pink800)
        case .shade900: return Color(.pink900)
        case .shade950: return Color(.pink950)
        case .shade980: return Color(.pink980)
        case .shade990: return Color(.pink990)
        }
    }
}
