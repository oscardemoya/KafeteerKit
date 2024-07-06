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
    public var index: Int { Self.allCases.firstIndex(of: self) ?? .max }
    
    public var name: String {
        switch self {
        case .finance: String(localized: "Finance", bundle: .module)
        case .essentials: String(localized: "Essentials", bundle: .module)
        case .wellness: String(localized: "Wellness", bundle: .module)
        case .housing: String(localized: "Housing", bundle: .module)
        case .homeware: String(localized: "Homeware", bundle: .module)
        case .electronics: String(localized: "Electronics", bundle: .module)
        case .growth: String(localized: "Growth", bundle: .module)
        case .leisure: String(localized: "Leisure", bundle: .module)
        }
    }
}
