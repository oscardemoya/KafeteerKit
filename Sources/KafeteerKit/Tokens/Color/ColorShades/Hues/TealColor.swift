//
//  TealColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct TealColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.teal010)
        case .shade020: return Color(.teal020)
        case .shade050: return Color(.teal050)
        case .shade100: return Color(.teal100)
        case .shade200: return Color(.teal200)
        case .shade300: return Color(.teal300)
        case .shade400: return Color(.teal400)
        case .shade500: return Color(.teal500)
        case .shade600: return Color(.teal600)
        case .shade700: return Color(.teal700)
        case .shade800: return Color(.teal800)
        case .shade900: return Color(.teal900)
        case .shade950: return Color(.teal950)
        case .shade980: return Color(.teal980)
        case .shade990: return Color(.teal990)
        }
    }
}
