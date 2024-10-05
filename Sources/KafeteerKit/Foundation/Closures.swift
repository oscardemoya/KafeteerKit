//
//  Closures.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public typealias Action = () -> Void
public typealias ValueAction<T> = (T) -> Void
public typealias TypeValueAction<T, V> = (T, V) -> Void

public struct DismissActionKey: EnvironmentKey {
    public static let defaultValue: Action? = nil
}

public extension EnvironmentValues {
    var dismissAction: Action? {
        get { self[DismissActionKey.self] }
        set { self[DismissActionKey.self] = newValue }
    }
}
