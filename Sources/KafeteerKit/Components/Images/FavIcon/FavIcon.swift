//
//  FavIcon.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/15/25.
//

import Foundation

public struct FavIcon {
    public enum Size: Int, CaseIterable {
        case small = 16
        case medium = 32
        case large = 64
        case xLarge = 128
        case xxLarge = 256
        case xxxLarge = 512
    }
    
    public let siteURL: URL
    public let size: Size
    
    public var domain: String { siteURL.host() ?? "" }
    public var urlString: String { "https://www.google.com/s2/favicons?sz=\(size.rawValue)&domain=\(domain)" }
    public var url: URL? { URL(string: urlString) }
    
    public init(_ siteURL: URL, size: Size = .large) {
        self.siteURL = siteURL
        self.size = size
    }
}
