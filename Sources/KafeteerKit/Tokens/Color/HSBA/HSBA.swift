//
//  HSBA.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 12/5/24.
//

import Foundation

public struct HSBA: Codable, RawRepresentable, DefaultProviding {
    public var hue: CGFloat
    public var saturation: CGFloat
    public var brightness: CGFloat
    public var alpha: CGFloat
    
    public static var defaultValue: HSBA = HSBA(hue: 0, saturation: 0, brightness: 0, alpha: 1)
    
    public var rawValue: String {
        if alpha != 1.0 {
            "H\(Int(round(hue * 255))) S\(Int(round(saturation * 255))) B\(Int(round(brightness * 255))) A\(Int(round(alpha * 255)))"
        } else {
            "H\(Int(round(hue * 255))) S\(Int(round(saturation * 255))) B\(Int(round(brightness * 255)))"
        }
    }

    public init?(rawValue: String) {
        guard let hsba = rawValue.hsba else { return nil }
        self = hsba
    }
    
    public init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat = 1.0) {
        self.hue = hue
        self.saturation = saturation
        self.brightness = brightness
        self.alpha = alpha
    }
}
