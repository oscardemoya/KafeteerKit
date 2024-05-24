//
//  PurchaseCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Purchase: String, CategoryRepresentable {
        public static var defaultValue: Self = .shopping
        public static var categoryName = String(localized: "Purchase")
        public var asPaymentCategory: PaymentCategory { .purchase(self) }
        
        case shopping
        case gift
        case furniture
        case furnishing
        case appliance
        case computer
        case phone
        case gadgets
        case toys

        public enum Keyword: String, KeywordRepresentable {
            case shopping
            case gift
            case present
            case furniture
            case furnishing
            case appliance
            case computer
            case phone
            case gadgets
            case toys
            case christmas

            public var value: Purchase {
                switch self {
                case .shopping: .shopping
                case .gift, .present: .gift
                case .furniture: .furniture
                case .furnishing: .furnishing
                case .appliance: .appliance
                case .computer: .computer
                case .phone: .phone
                case .gadgets: .gadgets
                case .toys, .christmas: .toys
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .shopping: "cart" // 􀍩
            case .gift: "gift" // 􀑉
            case .furniture: "sofa" // 􁐲
            case .furnishing: "curtains.closed" // 􁑸
            case .appliance: "refrigerator" // 􁐞
            case .computer: "desktopcomputer" // 􀙗
            case .phone: "candybarphone" // 􀪳
            case .gadgets: "headphones" // 􀑈
            case .toys: "teddybear" // 􀲬
            }
        }
        
        public var name: String {
            switch self {
            case .shopping: String(localized: "Shopping")
            case .gift: String(localized: "Gift")
            case .furniture: String(localized: "Furniture")
            case .furnishing: String(localized: "Furnishing")
            case .appliance: String(localized: "Appliance")
            case .computer: String(localized: "Computer")
            case .phone: String(localized: "Phone")
            case .gadgets: String(localized: "Gadgets")
            case .toys: String(localized: "Toys")
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
