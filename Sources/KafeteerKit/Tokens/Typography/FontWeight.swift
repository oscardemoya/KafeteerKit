//
//  FontFamily.swift
//
//
//  Created by Oscar De Moya on 12/03/24.
//

import SwiftUI

public enum FontWeight: String {
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black
    
    public var name: String {
        switch self {
        case .thin: Config.shared.fonts.thinFontName
        case .light: Config.shared.fonts.lightFontName
        case .regular: Config.shared.fonts.regularFontName
        case .medium: Config.shared.fonts.mediumFontName
        case .semibold: Config.shared.fonts.semiboldFontName
        case .bold: Config.shared.fonts.boldFontName
        case .heavy: Config.shared.fonts.heavyFontName
        case .black: Config.shared.fonts.blackFontName
        }
    }
    
    public static func fontName(for weight: Font.Weight) -> String {
        fontWeight(for: weight).name
    }
    
    private static func fontWeight(for weight: Font.Weight) -> FontWeight {
        switch weight {
        case .thin: .thin
        case .light: .light
        case .regular: .regular
        case .medium: .medium
        case .semibold: .semibold
        case .bold: .bold
        case .heavy: .heavy
        case .black: .black
        default: .regular
        }
    }
}
