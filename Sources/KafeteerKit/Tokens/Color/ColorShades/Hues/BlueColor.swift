//
//  BlueColor.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

struct BlueColor: ShadeColorProvider {
    public static func color(shade: ColorShade) -> Color {
        switch shade {
        case .shade010: return Color(.blue010)
        case .shade020: return Color(.blue020)
        case .shade050: return Color(.blue050)
        case .shade100: return Color(.blue100)
        case .shade200: return Color(.blue200)
        case .shade300: return Color(.blue300)
        case .shade400: return Color(.blue400)
        case .shade500: return Color(.blue500)
        case .shade600: return Color(.blue600)
        case .shade700: return Color(.blue700)
        case .shade800: return Color(.blue800)
        case .shade900: return Color(.blue900)
        case .shade950: return Color(.blue950)
        case .shade980: return Color(.blue980)
        case .shade990: return Color(.blue990)
        }
    }
}
