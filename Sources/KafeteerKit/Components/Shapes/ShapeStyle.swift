//
//  ShapeStyle.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public extension ShapeStyle where Self == Color {
    // Brand
    static var primaryBrand: Color { Config.shared.colors.primaryBrand }
    static var secondaryBrand: Color { Config.shared.colors.secondaryBrand }
    static var tertiaryBrand: Color { Config.shared.colors.tertiaryBrand }
    
    // Tint
    static var primaryTint: Color { Config.shared.colors.primaryTint }
    static var secondaryTint: Color { Config.shared.colors.secondaryTint }
    static var tertiaryTint: Color { Config.shared.colors.tertiaryTint }
    
    // Backgrounds
    static var primaryBackground: Color { Config.shared.colors.primaryBackground }
    static var secondaryBackground: Color { Config.shared.colors.secondaryBackground }
    static var tertiaryBackground: Color { Config.shared.colors.tertiaryBackground }
    
    // Foregrounds
    static var primaryForeground: Color { Config.shared.colors.primaryForeground }
    static var secondaryForeground: Color { Config.shared.colors.secondaryForeground }
    static var tertiaryForeground: Color { Config.shared.colors.tertiaryForeground }
    
    // Inputs
    static var primaryInputBackground: Color { Config.shared.colors.primaryInputBackground }
    static var secondaryInputBackground: Color { Config.shared.colors.secondaryInputBackground }
    static var tertiaryInputBackground: Color { Config.shared.colors.tertiaryInputBackground }
    
    // Bars
    static var barBackground: Color { Config.shared.colors.barBackground }
    
    // Lines
    static var borderColor: Color { Config.shared.colors.borderColor }
    static var dividerColor: Color { Config.shared.colors.dividerColor }
}
