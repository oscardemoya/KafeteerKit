//
//  GoldColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct GoldColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.gold010)
        case .shade020: return Color(.gold020)
        case .shade050: return Color(.gold050)
        case .shade100: return Color(.gold100)
        case .shade200: return Color(.gold200)
        case .shade300: return Color(.gold300)
        case .shade400: return Color(.gold400)
        case .shade500: return Color(.gold500)
        case .shade600: return Color(.gold600)
        case .shade700: return Color(.gold700)
        case .shade800: return Color(.gold800)
        case .shade900: return Color(.gold900)
        case .shade950: return Color(.gold950)
        case .shade980: return Color(.gold980)
        case .shade990: return Color(.gold990)
        }
    }
}
