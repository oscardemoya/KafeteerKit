//
//  Config.swift
//
//
//  Created by Oscar De Moya on 14/03/24.
//

public class Config {
    public static let shared = Config()
    public var sizing: Sizing = .regular
    public var colors: any ColorConfiguration = DefaultColorConfiguration()
    public var fonts: any FontConfiguration = DefaultFontConfiguration()
    public var isLoggingEnabled = true

    private init() {}
}
