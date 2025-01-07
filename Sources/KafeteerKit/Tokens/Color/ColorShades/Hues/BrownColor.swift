//
//  BrownColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct BrownColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.brown010)
        case .shade020: return Color(.brown020)
        case .shade050: return Color(.brown050)
        case .shade100: return Color(.brown100)
        case .shade200: return Color(.brown200)
        case .shade300: return Color(.brown300)
        case .shade400: return Color(.brown400)
        case .shade500: return Color(.brown500)
        case .shade600: return Color(.brown600)
        case .shade700: return Color(.brown700)
        case .shade800: return Color(.brown800)
        case .shade900: return Color(.brown900)
        case .shade950: return Color(.brown950)
        case .shade980: return Color(.brown980)
        case .shade990: return Color(.brown990)
        }
    }
}
