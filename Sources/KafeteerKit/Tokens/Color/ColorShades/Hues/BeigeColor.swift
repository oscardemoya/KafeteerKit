//
//  BeigeColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct BeigeColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.beige010)
        case .shade020: return Color(.beige020)
        case .shade050: return Color(.beige050)
        case .shade100: return Color(.beige100)
        case .shade200: return Color(.beige200)
        case .shade300: return Color(.beige300)
        case .shade400: return Color(.beige400)
        case .shade500: return Color(.beige500)
        case .shade600: return Color(.beige600)
        case .shade700: return Color(.beige700)
        case .shade800: return Color(.beige800)
        case .shade900: return Color(.beige900)
        case .shade950: return Color(.beige950)
        case .shade980: return Color(.beige980)
        case .shade990: return Color(.beige990)
        }
    }
}
