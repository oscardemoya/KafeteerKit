//
//  Closures.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import Foundation

public typealias Action = () -> Void
public typealias ValueAction<T> = (T) -> Void
public typealias TypeValueAction<T, V> = (T, V) -> Void
