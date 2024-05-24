//
//  EventCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Event: String, CategoryRepresentable {
        public static var defaultValue: Self = .event
        public static var categoryName = String(localized: "Event")
        public var asPaymentCategory: PaymentCategory { .event(self) }
        
        case event
        case party
        case celebration
        case birthday
        case wedding

        public enum Keyword: String, KeywordRepresentable {
            case event
            case party
            case celebration
            case birthday
            case wedding
            
            public var value: Event {
                switch self {
                case .event: .event
                case .party: .party
                case .celebration: .celebration
                case .birthday: .birthday
                case .wedding: .wedding
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .event: "ticket" // 􀪃
            case .party: "party.popper" // 􁓵
            case .celebration: "fireworks" // 􂁞
            case .birthday: "birthday.cake" // 􁖩
            case .wedding: "figure.2.arms.open" // 􁗆
            }
        }
        
        public var name: String {
            switch self {
            case .event: String(localized: "Event")
            case .party: String(localized: "Party")
            case .celebration: String(localized: "Celebration")
            case .birthday: String(localized: "Birthday")
            case .wedding: String(localized: "Wedding")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
