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
    case cyan
    case navy
    case blue
    case indigo
    case purple
    case pink
    case magenta
    case red
    case orange
    case brown
    case yellow
    case lime
    case green
    case mint
    case gray
    
    public static var allCasesMixed: [Self] {
        [
            .teal,
            .red,
            .cyan,
            .orange,
            .navy,
            .brown,
            .blue,
            .yellow,
            .indigo,
            .lime,
            .green,
            .purple,
            .mint,
            .pink,
            .gray,
            .magenta
        ]
    }

    public var id: Self { self }
}

