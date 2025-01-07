//
//  RedColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct RedColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.red010)
        case .shade020: return Color(.red020)
        case .shade050: return Color(.red050)
        case .shade100: return Color(.red100)
        case .shade200: return Color(.red200)
        case .shade300: return Color(.red300)
        case .shade400: return Color(.red400)
        case .shade500: return Color(.red500)
        case .shade600: return Color(.red600)
        case .shade700: return Color(.red700)
        case .shade800: return Color(.red800)
        case .shade900: return Color(.red900)
        case .shade950: return Color(.red950)
        case .shade980: return Color(.red980)
        case .shade990: return Color(.red990)
        }
    }
}
