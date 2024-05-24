//
//  IconRepresentable.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import SwiftUI

public protocol IconRepresentable {
    var iconName: String { get }
    var icon: Image { get }
}

public extension IconRepresentable {
    var icon: Image { Image(systemName: iconName) }
}
