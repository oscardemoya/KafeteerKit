//
//  BlurIntensity.swift
//
//
//  Created by Oscar De Moya on 13/03/24.
//

import SwiftUI

// TODO: Move values to a Config file
public enum BlurIntensity: CGFloat, Identifiable, Hashable, CaseIterable {
    case light = 8
    case medium = 16
    case intense = 32
    
    public var id: Self { self }
    public var radius: CGFloat { rawValue }
}
