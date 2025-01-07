//
//  AquaColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct AquaColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.aqua010)
        case .shade020: return Color(.aqua020)
        case .shade050: return Color(.aqua050)
        case .shade100: return Color(.aqua100)
        case .shade200: return Color(.aqua200)
        case .shade300: return Color(.aqua300)
        case .shade400: return Color(.aqua400)
        case .shade500: return Color(.aqua500)
        case .shade600: return Color(.aqua600)
        case .shade700: return Color(.aqua700)
        case .shade800: return Color(.aqua800)
        case .shade900: return Color(.aqua900)
        case .shade950: return Color(.aqua950)
        case .shade980: return Color(.aqua980)
        case .shade990: return Color(.aqua990)
        }
    }
}
