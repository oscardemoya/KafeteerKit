//
//  ShapeStyle.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public extension ShapeStyle where Self == Color {
    // Accent
    static var primaryAccent: Color { Config.shared.colors.primaryAccent }
    static var secondaryAccent: Color { Config.shared.colors.secondaryAccent }
    static var tertiaryAccent: Color { Config.shared.colors.tertiaryAccent }
    
    // Brand
    static var primaryBrand: Color { Config.shared.colors.primaryBrand }
    static var secondaryBrand: Color { Config.shared.colors.secondaryBrand }
    static var tertiaryBrand: Color { Config.shared.colors.tertiaryBrand }
    
    // Semantic
    static var successColor: Color { Config.shared.colors.successColor }
    static var warningColor: Color { Config.shared.colors.warningColor }
    static var dangerColor: Color { Config.shared.colors.dangerColor }
    
    // Tint
    static var primaryTint: Color { Config.shared.colors.primaryTint }
    static var secondaryTint: Color { Config.shared.colors.secondaryTint }
    static var tertiaryTint: Color { Config.shared.colors.tertiaryTint }
    
    // Backgrounds
    static var primaryBackground: Color { Config.shared.colors.primaryBackground }
    static var secondaryBackground: Color { Config.shared.colors.secondaryBackground }
    static var tertiaryBackground: Color { Config.shared.colors.tertiaryBackground }
    static var quatertiaryBackground: Color { Config.shared.colors.quatertiaryBackground }
    static var quinaryBackground: Color { Config.shared.colors.quinaryBackground }
    
    // Foregrounds
    static var primaryForeground: Color { Config.shared.colors.primaryForeground }
    static var secondaryForeground: Color { Config.shared.colors.secondaryForeground }
    static var tertiaryForeground: Color { Config.shared.colors.tertiaryForeground }
    static var quatertiaryForeground: Color { Config.shared.colors.quatertiaryForeground }
    static var quinaryForeground: Color { Config.shared.colors.quinaryForeground }
    
    // Input Backgrounds
    static var primaryInputBackground: Color { Config.shared.colors.primaryInputBackground }
    static var secondaryInputBackground: Color { Config.shared.colors.secondaryInputBackground }
    static var tertiaryInputBackground: Color { Config.shared.colors.tertiaryInputBackground }
    
    // Input Foregrounds
    static var primaryInputForeground: Color { Config.shared.colors.primaryInputForeground }
    static var secondaryInputForeground: Color { Config.shared.colors.secondaryInputForeground }
    static var tertiaryInputForeground: Color { Config.shared.colors.tertiaryInputForeground }
    
    // Lines
    static var borderColor: Color { Config.shared.colors.borderColor }
    static var dividerColor: Color { Config.shared.colors.dividerColor }
    
    // Shadows
    static var shadowColor: Color { Config.shared.colors.borderColor }
    
    // Bars
    static var barBackground: Color { Config.shared.colors.barBackground }
}
