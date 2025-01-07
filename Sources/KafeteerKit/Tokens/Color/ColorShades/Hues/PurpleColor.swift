//
//  PurpleColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct PurpleColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.purple010)
        case .shade020: return Color(.purple020)
        case .shade050: return Color(.purple050)
        case .shade100: return Color(.purple100)
        case .shade200: return Color(.purple200)
        case .shade300: return Color(.purple300)
        case .shade400: return Color(.purple400)
        case .shade500: return Color(.purple500)
        case .shade600: return Color(.purple600)
        case .shade700: return Color(.purple700)
        case .shade800: return Color(.purple800)
        case .shade900: return Color(.purple900)
        case .shade950: return Color(.purple950)
        case .shade980: return Color(.purple980)
        case .shade990: return Color(.purple990)
        }
    }
}
