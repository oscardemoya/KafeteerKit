//
//  BlackColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct BlackColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.black010)
        case .shade020: return Color(.black020)
        case .shade050: return Color(.black050)
        case .shade100: return Color(.black100)
        case .shade200: return Color(.black200)
        case .shade300: return Color(.black300)
        case .shade400: return Color(.black400)
        case .shade500: return Color(.black500)
        case .shade600: return Color(.black600)
        case .shade700: return Color(.black700)
        case .shade800: return Color(.black800)
        case .shade900: return Color(.black900)
        case .shade950: return Color(.black950)
        case .shade980: return Color(.black980)
        case .shade990: return Color(.black990)
        }
    }
}
