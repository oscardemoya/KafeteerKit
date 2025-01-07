//
//  PeachColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct PeachColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.peach010)
        case .shade020: return Color(.peach020)
        case .shade050: return Color(.peach050)
        case .shade100: return Color(.peach100)
        case .shade200: return Color(.peach200)
        case .shade300: return Color(.peach300)
        case .shade400: return Color(.peach400)
        case .shade500: return Color(.peach500)
        case .shade600: return Color(.peach600)
        case .shade700: return Color(.peach700)
        case .shade800: return Color(.peach800)
        case .shade900: return Color(.peach900)
        case .shade950: return Color(.peach950)
        case .shade980: return Color(.peach980)
        case .shade990: return Color(.peach990)
        }
    }
}
