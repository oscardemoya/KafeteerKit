//
//  IndigoColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct IndigoColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.indigo010)
        case .shade020: return Color(.indigo020)
        case .shade050: return Color(.indigo050)
        case .shade100: return Color(.indigo100)
        case .shade200: return Color(.indigo200)
        case .shade300: return Color(.indigo300)
        case .shade400: return Color(.indigo400)
        case .shade500: return Color(.indigo500)
        case .shade600: return Color(.indigo600)
        case .shade700: return Color(.indigo700)
        case .shade800: return Color(.indigo800)
        case .shade900: return Color(.indigo900)
        case .shade950: return Color(.indigo950)
        case .shade980: return Color(.indigo980)
        case .shade990: return Color(.indigo990)
        }
    }
}
