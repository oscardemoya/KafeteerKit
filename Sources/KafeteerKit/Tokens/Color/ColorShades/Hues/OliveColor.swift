//
//  OliveColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct OliveColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.olive010)
        case .shade020: return Color(.olive020)
        case .shade050: return Color(.olive050)
        case .shade100: return Color(.olive100)
        case .shade200: return Color(.olive200)
        case .shade300: return Color(.olive300)
        case .shade400: return Color(.olive400)
        case .shade500: return Color(.olive500)
        case .shade600: return Color(.olive600)
        case .shade700: return Color(.olive700)
        case .shade800: return Color(.olive800)
        case .shade900: return Color(.olive900)
        case .shade950: return Color(.olive950)
        case .shade980: return Color(.olive980)
        case .shade990: return Color(.olive990)
        }
    }
}
