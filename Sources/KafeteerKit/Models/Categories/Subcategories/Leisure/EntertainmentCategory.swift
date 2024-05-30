//
//  EntertainmentCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Entertainment: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .leisure
        public static var categoryIcon: Self = .movie
        public static var categoryName = String(localized: "Entertainment")
        public var asPaymentCategory: PaymentCategory { .entertainment(self) }
        
        case movie
        case videogame
        case vacation
        case travel
        case tour
        case museum
        case event
        case sportingEvent
        case concert
        case theater

        public enum Keyword: String, KeywordRepresentable {
            case movie
            case videogame
            case gaming
            case nintendo
            case playStation
            case xbox
            case cinema
            case vacation
            case travel
            case tour
            case museum
            case event
            case sportingEvent
            case concert
            case festival
            case theater

            public var value: Entertainment {
                switch self {
                case .movie, .cinema: .movie
                case .videogame, .gaming, .nintendo, .playStation, .xbox: .videogame
                case .vacation: .vacation
                case .travel: .travel
                case .tour: .tour
                case .museum: .museum
                case .event, .concert, .festival: .event
                case .sportingEvent: .sportingEvent
                case .concert: .concert
                case .theater: .theater
                }
            }
        }

        public var iconName: String {
            switch self {
            case .movie: "movieclapper" // 􀜤
            case .videogame: "gamecontroller" // 􀛸
            case .vacation: "water.waves" // 􁎄
            case .travel: "globe.europe.africa" // 􀵳
            case .tour: "binoculars" // 􀠍
            case .museum: "building.columns" // 􀤨
            case .event: "ticket" // 􀪃
            case .sportingEvent: "sportscourt" // 􀝐
            case .concert: "music.mic" // 􀑫
            case .theater: "theatermasks" // 􀺧
            }
        }
        
        public var name: String {
            switch self {
            case .movie: String(localized: "Movie")
            case .videogame: String(localized: "Video Game")
            case .vacation: String(localized: "Vacation")
            case .travel: String(localized: "Travel")
            case .tour: String(localized: "Tour")
            case .museum: String(localized: "Museum")
            case .event: String(localized: "Event")
            case .sportingEvent: String(localized: "Sporting Event")
            case .concert: String(localized: "Concert")
            case .theater: String(localized: "Theater")
            }
        }
    }
}
