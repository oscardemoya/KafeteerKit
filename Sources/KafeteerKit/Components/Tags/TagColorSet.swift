//
//  TagColorSet.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/22/25.
//

import SwiftUI

public extension TagColor {
    // Set of 8 colors
    static func colors(for set: ColorSet) -> [TagColor] {
        switch set {
        case .main: [.blue, .purple, .red, .orange, .green, .yellow, /*.white, */.gray, .black]
        case .secondary: [.indigo, .wine, .fuchsia, .tangerine, .lemon, .teal, .olive, .aqua] // Needs one more color
        case .tertiary: [.navy, .violet, .magenta, .vermilion, .gold, /*.lime, */.apple, .emerald, .cyan]
        case .pastel: [.celeste, .lavender, .pink, .peach, .cream, .mint, .beige, .brown/*, .charcoal*/]
        }
    }
}
