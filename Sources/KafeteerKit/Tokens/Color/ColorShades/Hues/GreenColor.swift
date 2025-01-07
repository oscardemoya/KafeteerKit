//
//  GreenColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct GreenColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.green010)
        case .shade020: return Color(.green020)
        case .shade050: return Color(.green050)
        case .shade100: return Color(.green100)
        case .shade200: return Color(.green200)
        case .shade300: return Color(.green300)
        case .shade400: return Color(.green400)
        case .shade500: return Color(.green500)
        case .shade600: return Color(.green600)
        case .shade700: return Color(.green700)
        case .shade800: return Color(.green800)
        case .shade900: return Color(.green900)
        case .shade950: return Color(.green950)
        case .shade980: return Color(.green980)
        case .shade990: return Color(.green990)
        }
    }
}
