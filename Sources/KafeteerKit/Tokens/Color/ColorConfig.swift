//
//  ColorConfig.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public protocol ColorConfiguration {
    // Accent
    var primaryAccent: Color { get }
    var secondaryAccent: Color { get }
    var tertiaryAccent: Color { get }
    
    // Brand
    var primaryBrand: Color { get }
    var secondaryBrand: Color { get }
    var tertiaryBrand: Color { get }
    
    // Semantic
    var successColor: Color { get }
    var warningColor: Color { get }
    var dangerColor: Color { get }
    
    // Tint
    var primaryTint: Color { get }
    var secondaryTint: Color { get }
    var tertiaryTint: Color { get }
    
    // Backgrounds
    var primaryBackground: Color { get }
    var secondaryBackground: Color { get }
    var tertiaryBackground: Color { get }
    
    // Foregrounds
    var primaryForeground: Color { get }
    var secondaryForeground: Color { get }
    var tertiaryForeground: Color { get }
    
    // Input Backgrounds
    var primaryInputBackground: Color { get }
    var secondaryInputBackground: Color { get }
    var tertiaryInputBackground: Color { get }
    
    // Input Foregrounds
    var primaryInputForeground: Color { get }
    var secondaryInputForeground: Color { get }
    var tertiaryInputForeground: Color { get }
    
    // Lines
    var borderColor: Color { get }
    var dividerColor: Color { get }
    
    // Shadows
    var shadowColor: Color { get }
    
    // Bars
    var barBackground: Color { get }
}

struct DefaultColorConfiguration: ColorConfiguration {
    // Accent
    var primaryAccent: Color { Color(.primary500) }
    var secondaryAccent: Color { Color(.primary700) }
    var tertiaryAccent: Color { Color(.secondary500) }
    
    // Brand
    var primaryBrand: Color { Color(.primary500) }
    var secondaryBrand: Color { Color(.secondary500) }
    var tertiaryBrand: Color { Color(.tertiary500) }
    
    // Semantic
    var successColor: Color { Color(.success500) }
    var warningColor: Color { Color(.warning500) }
    var dangerColor: Color { Color(.danger500) }
    
    // Tint
    var primaryTint: Color { Color(.primary200) }
    var secondaryTint: Color { Color(.secondary200) }
    var tertiaryTint: Color { Color(.tertiary200) }
    
    // Backgrounds
    var primaryBackground: Color { Color(.background300) }
    var secondaryBackground: Color { Color(.background500) }
    var tertiaryBackground: Color { Color(.background700) }
    
    // Foregrounds
    var primaryForeground: Color { Color(.foreground100) }
    var secondaryForeground: Color { Color(.foreground300) }
    var tertiaryForeground: Color { Color(.foreground500) }
    
    // Input Backgrounds
    var primaryInputBackground: Color { Color(.background500) }
    var secondaryInputBackground: Color { Color(.background700) }
    var tertiaryInputBackground: Color { Color(.background700) }
        
    // Input Foregrounds
    var primaryInputForeground: Color { Color(.foreground100) }
    var secondaryInputForeground: Color { Color(.foreground100) }
    var tertiaryInputForeground: Color { Color(.foreground100) }

    // Lines
    var borderColor: Color { Color(.foreground500).opacity(0.25) }
    var dividerColor: Color { Color(.foreground500).opacity(0.25) }
    
    // Bars
    var barBackground: Color { Color(.background200) }

    // Shadows
    var shadowColor: Color { Color(.foreground100) }
}
