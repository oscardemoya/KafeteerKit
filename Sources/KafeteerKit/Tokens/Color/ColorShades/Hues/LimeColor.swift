//
//  LimeColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct LimeColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.lime010)
        case .shade020: return Color(.lime020)
        case .shade050: return Color(.lime050)
        case .shade100: return Color(.lime100)
        case .shade200: return Color(.lime200)
        case .shade300: return Color(.lime300)
        case .shade400: return Color(.lime400)
        case .shade500: return Color(.lime500)
        case .shade600: return Color(.lime600)
        case .shade700: return Color(.lime700)
        case .shade800: return Color(.lime800)
        case .shade900: return Color(.lime900)
        case .shade950: return Color(.lime950)
        case .shade980: return Color(.lime980)
        case .shade990: return Color(.lime990)
        }
    }
}
