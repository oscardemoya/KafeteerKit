//
//  File.swift
//  
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public protocol FontConfiguration {
    var fontFamilyName: String { get }
    var thinFontName: String { get }
    var lightFontName: String { get }
    var regularFontName: String { get }
    var mediumFontName: String { get }
    var semiboldFontName: String { get }
    var boldFontName: String { get }
    var heavyFontName: String { get }
    var blackFontName: String { get }
}

struct DefaultFontConfiguration: FontConfiguration {
    var fontFamilyName: String { "AvenirNext" }
    var thinFontName: String { "AvenirNext-UltraLight" }
    var lightFontName: String { "Avenir-Light" }
    var regularFontName: String { "AvenirNext-Regular" }
    var mediumFontName: String { "AvenirNext-Medium" }
    var semiboldFontName: String { "AvenirNext-DemiBold" }
    var boldFontName: String { "AvenirNext-Bold" }
    var heavyFontName: String { "Avenir-Black" }
    var blackFontName: String { "AvenirNext-Heavy" }
}








