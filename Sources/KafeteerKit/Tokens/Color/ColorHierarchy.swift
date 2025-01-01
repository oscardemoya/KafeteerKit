//
//  ColorHierarchy.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 19/05/24.
//

import SwiftUI

public extension Hierarchy {
    var brandColor: Color {
        switch self {
        case .primary: .primaryBrand
        case .secondary: .secondaryBrand
        case .tertiary: .tertiaryBrand
        case .quaternary: .quaternaryBrand
        }
    }
    
    var accentColor: Color {
        switch self {
        case .primary: .primaryAccent
        case .secondary: .secondaryAccent
        case .tertiary: .tertiaryAccent
        case .quaternary: .quaternaryAccent
        }
    }
    
    var accentForegroundColor: Color {
        switch self {
        case .primary: .primaryAccentForeground
        case .secondary: .secondaryAccentForeground
        case .tertiary: .tertiaryAccentForeground
        case .quaternary: .quaternaryAccentForeground
        }
    }
    
    var tintColor: Color {
        switch self {
        case .primary: .primaryTint
        case .secondary: .secondaryTint
        case .tertiary: .tertiaryTint
        case .quaternary: .quaternaryTint
        }
    }
        
    var backgroundColor: Color {
        switch self {
        case .primary: .primaryBackground
        case .secondary: .secondaryBackground
        case .tertiary: .tertiaryBackground
        case .quaternary: .quaternaryBackground
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .primary: .primaryForeground
        case .secondary: .secondaryForeground
        case .tertiary: .tertiaryForeground
        case .quaternary: .quaternaryForeground
        }
    }
    
    var inputBackgroundColor: Color {
        switch self {
        case .primary: .primaryInputBackground
        case .secondary: .secondaryInputBackground
        case .tertiary: .tertiaryInputBackground
        case .quaternary: .quaternaryInputBackground
        }
    }
    
    var inputForegroundColor: Color {
        switch self {
        case .primary: .primaryInputForeground
        case .secondary: .secondaryInputForeground
        case .tertiary: .tertiaryInputForeground
        case .quaternary: .quaternaryInputForeground
        }
    }
}
