//
//  ActivityCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Activity: String, CategoryRepresentable {
        case membership
        case gym
        case fitness
        case sports
        case outdoor

        public enum Keyword: String, KeywordRepresentable {
            case membership
            case gym
            case fitness
            case sports
            case outdoor
            case camping
            
            public var value: Activity {
                switch self {
                case .membership: .membership
                case .gym: .gym
                case .fitness: .fitness
                case .sports: .sports
                case .outdoor, .camping: .outdoor
                }
            }
        }

        public static var defaultValue: Self = .fitness
        public static var categoryName = String(localized: "Activity")
        public var asPaymentCategory: PaymentCategory { .activity(self) }
        
        public var iconName: String {
            switch self {
            case .membership: "person.text.rectangle" // 􀿒
            case .gym: "dumbbell" // 􁖌
            case .fitness: "figure.run" // 􀐳
            case .sports: "basketball" // 􁗉
            case .outdoor: "tent" // 􁋨
            }
        }
        
        public var name: String {
            switch self {
            case .membership: String(localized: "Membership")
            case .gym: String(localized: "Gym")
            case .fitness: String(localized: "Fitness")
            case .sports: String(localized: "Sports")
            case .outdoor: String(localized: "Outdoor")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
