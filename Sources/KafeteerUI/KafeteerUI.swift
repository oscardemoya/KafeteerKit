//
//  File.swift
//
//
//  Created by Oscar De Moya on 4/03/24.
//

import Foundation
import SwiftUI

public struct KafeteerUI {
    public static var currentSizing: Sizing { Config.shared.sizing }
    
    public static func configure(sizing: Sizing = .regular, 
                                 colors: (any ColorConfiguration)? = nil,
                                 fonts: (any FontConfiguration)? = nil) {
        Config.shared.sizing = sizing
        if let colors {
            Config.shared.colors = colors
        }
        if let fonts {
            Config.shared.fonts = fonts
        }
    }
}
