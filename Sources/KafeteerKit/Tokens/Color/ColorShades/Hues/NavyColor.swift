//
//  NavyColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct NavyColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.navy010)
        case .shade020: return Color(.navy020)
        case .shade050: return Color(.navy050)
        case .shade100: return Color(.navy100)
        case .shade200: return Color(.navy200)
        case .shade300: return Color(.navy300)
        case .shade400: return Color(.navy400)
        case .shade500: return Color(.navy500)
        case .shade600: return Color(.navy600)
        case .shade700: return Color(.navy700)
        case .shade800: return Color(.navy800)
        case .shade900: return Color(.navy900)
        case .shade950: return Color(.navy950)
        case .shade980: return Color(.navy980)
        case .shade990: return Color(.navy990)
        }
    }
}
