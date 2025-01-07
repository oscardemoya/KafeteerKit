//
//  MagentaColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct MagentaColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.magenta010)
        case .shade020: return Color(.magenta020)
        case .shade050: return Color(.magenta050)
        case .shade100: return Color(.magenta100)
        case .shade200: return Color(.magenta200)
        case .shade300: return Color(.magenta300)
        case .shade400: return Color(.magenta400)
        case .shade500: return Color(.magenta500)
        case .shade600: return Color(.magenta600)
        case .shade700: return Color(.magenta700)
        case .shade800: return Color(.magenta800)
        case .shade900: return Color(.magenta900)
        case .shade950: return Color(.magenta950)
        case .shade980: return Color(.magenta980)
        case .shade990: return Color(.magenta990)
        }
    }
}
