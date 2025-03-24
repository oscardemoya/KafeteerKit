//
//  LifeCategory.swift
//
//
//  Created by Oscar De Moya on 28/05/24.
//

import Foundation

public enum LifeArea: String, Codable, Identifiable, CaseIterable {
    case essentials
    case finance
    case housing
    case homeware
    case electronics
    case wellness
    case growth
    case leisure
    
    public enum Order {
        case index
        case financeFirst
    }
    
    public var id: Self { self }
    public var index: Int { Self.allCases.firstIndex(of: self) ?? .max }
    
    public var name: String {
        switch self {
        case .essentials: String(localized: "Essentials", bundle: .module)
        case .finance: String(localized: "Finance", bundle: .module)
        case .housing: String(localized: "Housing", bundle: .module)
        case .homeware: String(localized: "Homeware", bundle: .module)
        case .electronics: String(localized: "Electronics", bundle: .module)
        case .wellness: String(localized: "Wellness", bundle: .module)
        case .growth: String(localized: "Growth", bundle: .module)
        case .leisure: String(localized: "Leisure", bundle: .module)
        }
    }
    
    public var iconName: String {
        switch self {
        case .essentials: PaymentCategory.Food.breakfast.iconName
        case .finance: PaymentCategory.Finance.categoryIcon.iconName
        case .housing: PaymentCategory.Home.mortgage.iconName
        case .homeware: PaymentCategory.Furniture.furniture.iconName
        case .electronics: PaymentCategory.Electronics.gadgets.iconName
        case .wellness: PaymentCategory.Healthcare.healthcare.iconName
        case .growth: PaymentCategory.Knowledge.education.iconName
        case .leisure: PaymentCategory.Entertainment.movie.iconName
        }
    }
}
