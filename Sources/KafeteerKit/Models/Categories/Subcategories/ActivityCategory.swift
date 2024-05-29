//
//  ActivityCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Activity: String, CategoryRepresentable {
        public static var categoryIcon: Self = .fitness
        public static var categoryName = String(localized: "Activity")
        public var asPaymentCategory: PaymentCategory { .activity(self) }
        
        case gym
        case fitness
        case yoga
        case meditation
        case swimming
        case outdoor
        case hiking
        case fishing
        case cycling
        case club

        public enum Keyword: String, KeywordRepresentable {
            case gym
            case fitness
            case yoga
            case meditation
            case swimming
            case outdoor
            case camping
            case hiking
            case fishing
            case cycling
            case club
            
            public var value: Activity {
                switch self {
                case .gym: .gym
                case .fitness: .fitness
                case .yoga: .yoga
                case .meditation: .meditation
                case .swimming: .swimming
                case .outdoor, .camping: .outdoor
                case .hiking: .hiking
                case .fishing: .fishing
                case .cycling: .cycling
                case .club: .club
                }
            }
        }

        public var iconName: String {
            switch self {
            case .gym: "dumbbell" // 􁖌
            case .fitness: "figure.run" // 􀐳
            case .yoga: "figure.yoga" // 􁒌
            case .meditation: "figure.mind.and.body" // 􁔴
            case .swimming: "figure.pool.swim" // 􁌆
            case .outdoor: "tent" // 􁋨
            case .hiking: "figure.hiking" // 􁔭
            case .fishing: "figure.fishing" // 􁔧
            case .cycling: "figure.outdoor.cycle" // 􁌉
            case .club: "figure.golf" // 􁔩
            }
        }
        
        public var name: String {
            switch self {
            case .gym: String(localized: "Gym")
            case .fitness: String(localized: "Fitness")
            case .yoga: String(localized: "Yoga")
            case .meditation: String(localized: "Meditation")
            case .swimming: String(localized: "Swimming")
            case .outdoor: String(localized: "Outdoor")
            case .hiking: String(localized: "Hiking")
            case .fishing: String(localized: "Fishing")
            case .cycling: String(localized: "Cycling")
            case .club: String(localized: "Club")
            }
        }
    }
}
