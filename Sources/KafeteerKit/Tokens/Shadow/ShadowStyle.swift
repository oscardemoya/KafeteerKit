//
//  ShadowStyle.swift
//
//
//  Created by Oscar De Moya on 13/03/24.
//

import SwiftUI

public enum ShadowStyle: Identifiable, Hashable, CaseIterable {
    case light
    case medium
    case intense

    public var id: Self { self }
    private static let offsetMultiplier: CGFloat = 0.5
    
    // TODO: Move values to a Config file
    public var opacity: CGFloat {
        switch self {
        case .light: 0.08
        case .medium: 0.12
        case .intense: 0.32
        }
    }
    
    // TODO: Move values to a Config file
    public var radius: CGFloat {
        switch self {
        case .light: 1
        case .medium: 4
        case .intense: 12
        }
    }
    
    // TODO: Move values to a Config file
    public var offset: CGPoint {
        switch self {
        case .light: CGPoint(x: 0, y: 4 * Self.offsetMultiplier)
        case .medium: CGPoint(x: 0, y: 12 * Self.offsetMultiplier)
        case .intense: CGPoint(x: 0, y: 24 * Self.offsetMultiplier)
        }
    }
}
