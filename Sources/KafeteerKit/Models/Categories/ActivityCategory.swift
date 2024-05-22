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

        public enum Keyword: String, CaseInsensitive {
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
            case .membership: String(localized: LocalizedStringResource("Membership"))
            case .gym: String(localized: LocalizedStringResource("Gym"))
            case .fitness: String(localized: LocalizedStringResource("Fitness"))
            case .sports: String(localized: LocalizedStringResource("Sports"))
            case .outdoor: String(localized: LocalizedStringResource("Outdoor"))
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
