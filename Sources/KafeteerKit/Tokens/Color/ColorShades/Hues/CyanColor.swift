//
//  CyanColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct CyanColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.cyan010)
        case .shade020: return Color(.cyan020)
        case .shade050: return Color(.cyan050)
        case .shade100: return Color(.cyan100)
        case .shade200: return Color(.cyan200)
        case .shade300: return Color(.cyan300)
        case .shade400: return Color(.cyan400)
        case .shade500: return Color(.cyan500)
        case .shade600: return Color(.cyan600)
        case .shade700: return Color(.cyan700)
        case .shade800: return Color(.cyan800)
        case .shade900: return Color(.cyan900)
        case .shade950: return Color(.cyan950)
        case .shade980: return Color(.cyan980)
        case .shade990: return Color(.cyan990)
        }
    }
}
