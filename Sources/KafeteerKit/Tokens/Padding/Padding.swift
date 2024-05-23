//
//  Padding.swift
//
//
//  Created by Oscar De Moya on 14/03/24.
//

import SwiftUI

// TODO: Move values to a Config file
public enum Padding: CGFloat, Identifiable, Hashable, CaseIterable {
    case none = 0
    case quark = 2
    case nano = 4
    case extraSmall = 8
    case small = 12
    case medium = 16
    case large = 24
    case extraLarge = 32
    case big = 40
    case huge = 48
    case giant = 56
    case jumbo = 64
    
    public var id: Self { self }
    public var value: CGFloat { values.value(for: Config.shared.sizing) }
    
    private var values: SizingValues { .init(rawValue) }
}
