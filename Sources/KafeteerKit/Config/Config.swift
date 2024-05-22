//
//  Config.swift
//
//
//  Created by Oscar De Moya on 14/03/24.
//

class Config {
    static let shared = Config()
    var sizing: Sizing = .regular
    var colors: any ColorConfiguration = DefaultColorConfiguration()
    var fonts: any FontConfiguration = DefaultFontConfiguration()
    var isLoggingEnabled = true

    private init() {}
}
