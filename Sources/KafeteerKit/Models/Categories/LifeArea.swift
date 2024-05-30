//
//  LifeCategory.swift
//
//
//  Created by Oscar De Moya on 28/05/24.
//

import Foundation

public enum LifeArea: String, Identifiable, CaseIterable {
    case finance
    case essentials
    case wellness
    case housing
    case homeware
    case electronics
    case growth
    case leisure
    
    public var id: Self { self }
    public var name: String { rawValue.titlecased }
    public var order: Int { Self.allCases.firstIndex(of: self) ?? .max }
}
