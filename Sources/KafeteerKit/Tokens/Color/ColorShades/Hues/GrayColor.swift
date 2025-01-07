//
//  GrayColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct GrayColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.gray010)
        case .shade020: return Color(.gray020)
        case .shade050: return Color(.gray050)
        case .shade100: return Color(.gray100)
        case .shade200: return Color(.gray200)
        case .shade300: return Color(.gray300)
        case .shade400: return Color(.gray400)
        case .shade500: return Color(.gray500)
        case .shade600: return Color(.gray600)
        case .shade700: return Color(.gray700)
        case .shade800: return Color(.gray800)
        case .shade900: return Color(.gray900)
        case .shade950: return Color(.gray950)
        case .shade980: return Color(.gray980)
        case .shade990: return Color(.gray990)
        }
    }
}
