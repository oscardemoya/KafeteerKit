//
//  WineColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct WineColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.wine010)
        case .shade020: return Color(.wine020)
        case .shade050: return Color(.wine050)
        case .shade100: return Color(.wine100)
        case .shade200: return Color(.wine200)
        case .shade300: return Color(.wine300)
        case .shade400: return Color(.wine400)
        case .shade500: return Color(.wine500)
        case .shade600: return Color(.wine600)
        case .shade700: return Color(.wine700)
        case .shade800: return Color(.wine800)
        case .shade900: return Color(.wine900)
        case .shade950: return Color(.wine950)
        case .shade980: return Color(.wine980)
        case .shade990: return Color(.wine990)
        }
    }
}
