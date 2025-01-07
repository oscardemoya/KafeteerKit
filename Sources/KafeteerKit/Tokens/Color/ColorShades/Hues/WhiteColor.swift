//
//  WhiteColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct WhiteColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.white010)
        case .shade020: return Color(.white020)
        case .shade050: return Color(.white050)
        case .shade100: return Color(.white100)
        case .shade200: return Color(.white200)
        case .shade300: return Color(.white300)
        case .shade400: return Color(.white400)
        case .shade500: return Color(.white500)
        case .shade600: return Color(.white600)
        case .shade700: return Color(.white700)
        case .shade800: return Color(.white800)
        case .shade900: return Color(.white900)
        case .shade950: return Color(.white950)
        case .shade980: return Color(.white980)
        case .shade990: return Color(.white990)
        }
    }
}
