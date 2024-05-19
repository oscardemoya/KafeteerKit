//
//  TextStyle.swift
//
//
//  Created by Oscar De Moya on 12/03/24.
//

import SwiftUI

public enum TextStyle: String, Identifiable, Hashable, CaseIterable {
    case display
    case header
    case title1
    case title2
    case headline
    case subtitle
    case large
    case body
    case small
    case caption
    case overline
    
    public var id: Self { self }
    public var custom: Font { Font.custom(FontWeight.fontName(for: weight), size: size, relativeTo: textStyle) }
    public var uiFont: CrossPlatformFont { CrossPlatformFont(name: FontWeight.fontName(for: weight), size: size)! }
    
    // swiftlint:disable cyclomatic_complexity
    var textStyle: Font.TextStyle {
        switch self {
        case .display: .largeTitle
        case .header: .title
        case .title1: .title2
        case .title2: .title3
        case .headline: .headline
        case .subtitle: .subheadline
        case .large: .callout
        case .body: .body
        case .small: .footnote
        case .caption: .caption
        case .overline: .caption2
        }
    }
    
    // TODO: Move values to a Config file
    // swiftlint:disable cyclomatic_complexity
    public var size: CGFloat {
        switch self {
        case .display: return 72
        case .header: return 44
        case .title1: return 36
        case .title2: return 28
        case .headline: return 22
        case .subtitle: return 14
        case .large: return 18
        case .body: return 16
        case .small: return 14
        case .caption: return 12
        case .overline: return 10
        }
    }
    
    // TODO: Move values to a Config file
    // swiftlint:disable cyclomatic_complexity
    public var weight: Font.Weight {
        switch self {
        case .display: return .bold
        case .header: return .bold
        case .title1: return .bold
        case .title2: return .bold
        case .headline: return .bold
        case .subtitle: return .bold
        case .large: return .regular
        case .body: return .regular
        case .small: return .regular
        case .caption: return .regular
        case .overline: return .bold
        }
    }
    
    // TODO: Move values to a Config file
    public var alias: String {
        switch self {
        case .title1: return "Title 1"
        case .title2: return "Title 2"
        default: return rawValue.capitalized
        }
    }
    
    // TODO: Add transformation for uppercased text styles
}
