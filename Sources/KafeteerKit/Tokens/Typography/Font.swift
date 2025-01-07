//
//  Font.swift
//  
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI
import UIKit

public extension Font {
    static func custom(_ textStyle: Font.TextStyle) -> Font {
        Font.custom(Config.shared.fonts.fontFamilyName, size: size(for: textStyle), relativeTo: textStyle)
    }
    
    static func systemDefault(_ textStyle: Font.TextStyle) -> Font {
        Font.system(textStyle, design: .rounded)
    }
    
    static func size(for textStyle: Font.TextStyle) -> CGFloat {
        switch textStyle {
        case .largeTitle: return 34
        case .title: return 28
        case .title2: return 22
        case .title3: return 20
        case .headline: return 17
        case .subheadline: return 15
        case .body: return 17
        case .callout: return 16
        case .footnote: return 13
        case .caption: return 12
        case .caption2: return 10
        @unknown default: return 17
        }
    }
    
    func printAllFonts() {
        let fontFamilyNames = UIFont.familyNames
        fontFamilyNames.forEach { familyName in
            print("Font family: \(familyName)")
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            fontNames.forEach { fontName in
                print("\tFont name: \(fontName)")
            }
        }
    }
}
