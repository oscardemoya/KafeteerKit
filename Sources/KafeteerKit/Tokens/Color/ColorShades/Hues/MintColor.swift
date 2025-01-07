//
//  MintColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct MintColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.mint010)
        case .shade020: return Color(.mint020)
        case .shade050: return Color(.mint050)
        case .shade100: return Color(.mint100)
        case .shade200: return Color(.mint200)
        case .shade300: return Color(.mint300)
        case .shade400: return Color(.mint400)
        case .shade500: return Color(.mint500)
        case .shade600: return Color(.mint600)
        case .shade700: return Color(.mint700)
        case .shade800: return Color(.mint800)
        case .shade900: return Color(.mint900)
        case .shade950: return Color(.mint950)
        case .shade980: return Color(.mint980)
        case .shade990: return Color(.mint990)
        }
    }
}
