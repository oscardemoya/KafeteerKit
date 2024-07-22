//
//  TagColor.swift
//
//
//  Created by Oscar De Moya on 15/06/24.
//

import SwiftUI

public enum TagColor: String, Codable, CaseIterable, Identifiable {
    
    public static let `default`: Self = .teal
    
    case teal
    case blue
    case indigo
    case purple
    case pink
    case red
    case orange
    case brown
    case yellow
    case lime
    case green
    case mint

    public var id: Self { self }
}

