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
            case .movies: "movieclapper" // 􀜤
            case .club: "figure.golf" // 􁔩
            }
        }
        
        public var name: String {
            switch self {
            case .vacation: String(localized: "Vacation")
            case .travel: String(localized: "Travel")
            case .restaurant: String(localized: "Restaurant")
            case .movies: String(localized: "Movies")
            case .club: String(localized: "Club")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
