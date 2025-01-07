//
//  CreamColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct CreamColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.cream010)
        case .shade020: return Color(.cream020)
        case .shade050: return Color(.cream050)
        case .shade100: return Color(.cream100)
        case .shade200: return Color(.cream200)
        case .shade300: return Color(.cream300)
        case .shade400: return Color(.cream400)
        case .shade500: return Color(.cream500)
        case .shade600: return Color(.cream600)
        case .shade700: return Color(.cream700)
        case .shade800: return Color(.cream800)
        case .shade900: return Color(.cream900)
        case .shade950: return Color(.cream950)
        case .shade980: return Color(.cream980)
        case .shade990: return Color(.cream990)
        }
    }
}
