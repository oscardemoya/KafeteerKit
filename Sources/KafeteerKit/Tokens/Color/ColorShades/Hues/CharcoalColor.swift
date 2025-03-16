//
//  CharcoalColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct CharcoalColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.charcoal010)
        case .shade020: return Color(.charcoal020)
        case .shade050: return Color(.charcoal050)
        case .shade100: return Color(.charcoal100)
        case .shade200: return Color(.charcoal200)
        case .shade300: return Color(.charcoal300)
        case .shade400: return Color(.charcoal400)
        case .shade500: return Color(.charcoal500)
        case .shade600: return Color(.charcoal600)
        case .shade700: return Color(.charcoal700)
        case .shade800: return Color(.charcoal800)
        case .shade900: return Color(.charcoal900)
        case .shade950: return Color(.charcoal950)
        case .shade980: return Color(.charcoal980)
        case .shade990: return Color(.charcoal990)
        }
    }
}
