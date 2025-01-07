//
//  OrangeColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct OrangeColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.orange010)
        case .shade020: return Color(.orange020)
        case .shade050: return Color(.orange050)
        case .shade100: return Color(.orange100)
        case .shade200: return Color(.orange200)
        case .shade300: return Color(.orange300)
        case .shade400: return Color(.orange400)
        case .shade500: return Color(.orange500)
        case .shade600: return Color(.orange600)
        case .shade700: return Color(.orange700)
        case .shade800: return Color(.orange800)
        case .shade900: return Color(.orange900)
        case .shade950: return Color(.orange950)
        case .shade980: return Color(.orange980)
        case .shade990: return Color(.orange990)
        }
    }
}
