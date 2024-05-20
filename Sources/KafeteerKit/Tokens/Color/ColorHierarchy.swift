//
//  ColorHierarchy.swift
//
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
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .primary: .primaryBackground
        case .secondary: .secondaryBackground
        case .tertiary: .tertiaryBackground
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .primary: .primaryForeground
        case .secondary: .secondaryForeground
        case .tertiary: .tertiaryForeground
        }
    }
    
    var inputBackgroundColor: Color {
        switch self {
        case .primary: .primaryInputBackground
        case .secondary: .secondaryInputBackground
        case .tertiary: .tertiaryInputBackground
        }
    }
}
