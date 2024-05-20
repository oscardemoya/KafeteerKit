//
//  EntertainmentCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Entertainment: String, CategoryRepresentable {
        case vacation
        case travel
        case restaurant
        case movies
        case club

        public enum Keyword: String, CaseInsensitive {
            case vacation
            case travel
            case restaurant
            case movies
            case cinema
            case club

            public var value: Entertainment {
                switch self {
                case .vacation: .vacation
                case .travel: .travel
                case .restaurant: .restaurant
                case .movies, .cinema: .movies
                case .club: .club
                }
            }
        }

        public var iconName: String {
            switch self {
            case .vacation: "water.waves" // 􁎄
            case .travel: "globe.europe.africa" // 􀵳
            case .restaurant: "fork.knife" // 􀸩
            case .movies: "popcorn" // 􁐇
            case .club: "figure.golf" // 􁔩
            }
        }
        
        public var name: String {
            switch self {
            case .vacation: String(localized: LocalizedStringResource("Vacation"))
            case .travel: String(localized: LocalizedStringResource("Travel"))
            case .restaurant: String(localized: LocalizedStringResource("Restaurant"))
            case .movies: String(localized: LocalizedStringResource("Movies"))
            case .club: String(localized: LocalizedStringResource("Club"))
            }
        }
    }
}
