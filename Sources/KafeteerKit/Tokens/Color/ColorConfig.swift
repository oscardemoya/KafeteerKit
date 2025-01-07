//
//  ColorConfig.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public protocol ColorConfiguration {
    // Accent
    var primaryAccent: Color { get }
    var secondaryAccent: Color { get }
    var tertiaryAccent: Color { get }
    var quaternaryAccent: Color { get }
    
    // Accent Foreground
    var primaryAccentForeground: Color { get }
    var secondaryAccentForeground: Color { get }
    var tertiaryAccentForeground: Color { get }
    var quaternaryAccentForeground: Color { get }
    
    // Brand
    var primaryBrand: Color { get }
    var secondaryBrand: Color { get }
    var tertiaryBrand: Color { get }
    var quaternaryBrand: Color { get }
    
    // Semantic
    var infoColor: Color { get }
    var successColor: Color { get }
    var warningColor: Color { get }
    var dangerColor: Color { get }
    
    // Semantic Foreground
    var infoForeground: Color { get }
    var successForeground: Color { get }
    var warningForeground: Color { get }
    var dangerForeground: Color { get }
    
    // Tint
    var primaryTint: Color { get }
    var secondaryTint: Color { get }
    var tertiaryTint: Color { get }
    var quaternaryTint: Color { get }
    
    // Tint Foreground
    var primaryTintForeground: Color { get }
    var secondaryTintForeground: Color { get }
    var tertiaryTintForeground: Color { get }
    var quaternaryTintForeground: Color { get }
    
    // Backgrounds
    var primaryBackground: Color { get }
    var secondaryBackground: Color { get }
    var tertiaryBackground: Color { get }
    var quaternaryBackground: Color { get }
    
    // Foregrounds
    var primaryForeground: Color { get }
    var secondaryForeground: Color { get }
    var tertiaryForeground: Color { get }
    var quaternaryForeground: Color { get }
    
    // Input Backgrounds
    var primaryInputBackground: Color { get }
    var secondaryInputBackground: Color { get }
    var tertiaryInputBackground: Color { get }
    var quaternaryInputBackground: Color { get }
    
    // Input Foregrounds
    var primaryInputForeground: Color { get }
    var secondaryInputForeground: Color { get }
    var tertiaryInputForeground: Color { get }
    var quaternaryInputForeground: Color { get }
    
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
    var primaryAccent: Color { Color(.blue500) }
    var secondaryAccent: Color { Color(.blue700) }
    var tertiaryAccent: Color { Color(.yellow500) }
    var quaternaryAccent: Color { Color(.yellow700) }
    
    // Accent Foreground
    var primaryAccentForeground: Color { Color(.blue050) }
    var secondaryAccentForeground: Color { Color(.blue050) }
    var tertiaryAccentForeground: Color { Color(.yellow050) }
    var quaternaryAccentForeground: Color { Color(.yellow050) }
    
    // Brand
    var primaryBrand: Color { Color(.blue500) }
    var secondaryBrand: Color { Color(.yellow500) }
    var tertiaryBrand: Color { Color(.purple500) }
    var quaternaryBrand: Color { Color(.pink500) }
    
    // Semantic
    var infoColor: Color { Color(.blue500) }
    var successColor: Color { Color(.green500) }
    var warningColor: Color { Color(.orange500) }
    var dangerColor: Color { Color(.red500) }
    
    // Semantic Foreground
    var infoForeground: Color { Color(.blue050) }
    var successForeground: Color { Color(.green050) }
    var warningForeground: Color { Color(.orange050) }
    var dangerForeground: Color { Color(.red050) }
    
    // Tint
    var primaryTint: Color { Color(.blue100) }
    var secondaryTint: Color { Color(.blue200) }
    var tertiaryTint: Color { Color(.yellow100) }
    var quaternaryTint: Color { Color(.yellow200) }
    
    // Tint Foreground
    var primaryTintForeground: Color { Color(.blue800) }
    var secondaryTintForeground: Color { Color(.blue900) }
    var tertiaryTintForeground: Color { Color(.yellow800) }
    var quaternaryTintForeground: Color { Color(.yellow900) }
    
    // Backgrounds
    var primaryBackground: Color { Color(.background100) }
    var secondaryBackground: Color { Color(.background400) }
    var tertiaryBackground: Color { Color(.background600) }
    var quaternaryBackground: Color { Color(.background900) }
    
    // Foregrounds
    var primaryForeground: Color { Color(.foreground100) }
    var secondaryForeground: Color { Color(.foreground400) }
    var tertiaryForeground: Color { Color(.foreground600) }
    var quaternaryForeground: Color { Color(.foreground900) }
    
    // Input Backgrounds
    var primaryInputBackground: Color { Color(.background500) }
    var secondaryInputBackground: Color { Color(.background700) }
    var tertiaryInputBackground: Color { Color(.background900) }
    var quaternaryInputBackground: Color { Color(.background950) }
        
    // Input Foregrounds
    var primaryInputForeground: Color { Color(.foreground100) }
    var secondaryInputForeground: Color { Color(.foreground100) }
    var tertiaryInputForeground: Color { Color(.foreground100) }
    var quaternaryInputForeground: Color { Color(.foreground100) }

    // Lines
    var borderColor: Color { Color(.foreground500).opacity(0.25) }
    var dividerColor: Color { Color(.foreground500).opacity(0.25) }
    
    // Bars
    var barBackground: Color { Color(.background200) }

    // Shadows
    var shadowColor: Color { Color(.foreground100) }
}
