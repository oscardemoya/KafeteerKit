//
//  YellowColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct YellowColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.yellow010)
        case .shade020: return Color(.yellow020)
        case .shade050: return Color(.yellow050)
        case .shade100: return Color(.yellow100)
        case .shade200: return Color(.yellow200)
        case .shade300: return Color(.yellow300)
        case .shade400: return Color(.yellow400)
        case .shade500: return Color(.yellow500)
        case .shade600: return Color(.yellow600)
        case .shade700: return Color(.yellow700)
        case .shade800: return Color(.yellow800)
        case .shade900: return Color(.yellow900)
        case .shade950: return Color(.yellow950)
        case .shade980: return Color(.yellow980)
        case .shade990: return Color(.yellow990)
        }
    }
}
