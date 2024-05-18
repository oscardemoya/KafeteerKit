//
//  ColorConfig.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public protocol ColorConfiguration {    
    // Brand
    var primaryBrand: Color { get }
    var secondaryBrand: Color { get }
    var tertiaryBrand: Color { get }
    
    // Backgrounds
    var primaryBackground: Color { get }
    var secondaryBackground: Color { get }
    var tertiaryBackground: Color { get }
    
    // Foregrounds
    var primaryForeground: Color { get }
    var secondaryForeground: Color { get }
    var tertiaryForeground: Color { get }
    
    // Lines
    var borderColor: Color { get }
    var dividerColor: Color { get }
    
    // Inputs
    var primaryInputBackground: Color { get }
    var secondaryInputBackground: Color { get }
    var tertiaryInputBackground: Color { get }
    
    // Bars
    var barBackground: Color { get }
}

struct DefaultColorConfiguration: ColorConfiguration {
    // Brand
    var primaryBrand: Color { Color(.primary500) }
    var secondaryBrand: Color { Color(.secondary500) }
    var tertiaryBrand: Color { Color(.tertiary500) }
    
    // Backgrounds
    var primaryBackground: Color { Color(.background300) }
    var secondaryBackground: Color { Color(.background500) }
    var tertiaryBackground: Color { Color(.background700) }
    
    // Foregrounds
    var primaryForeground: Color { Color(.foreground100) }
    var secondaryForeground: Color { Color(.foreground300) }
    var tertiaryForeground: Color { Color(.foreground500) }
    
    // Lines
    var borderColor: Color { Color(.foreground500).opacity(0.25) }
    var dividerColor: Color { Color(.foreground500).opacity(0.5) }
    
    // Inputs
    var primaryInputBackground: Color { Color(.background500) }
    var secondaryInputBackground: Color { Color(.background700) }
    var tertiaryInputBackground: Color { Color(.background700) }
    
    // Bars
    var barBackground: Color { Color(.background200) }
}
