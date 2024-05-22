//
//  PurchaseCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Purchase: String, CategoryRepresentable {
        case shopping
        case clothing
        case furniture
        case furnishing
        case appliance
        case computer
        case gadgets
        case toys
        case gifts
        case jewelry

        public enum Keyword: String, CaseInsensitive {
            case shopping
            case clothing
            case furniture
            case furnishing
            case appliance
            case computer
            case gadgets
            case toys
            case christmas
            case gifts
            case presents
            case jewelry

            public var value: Purchase {
                switch self {
                case .clothing: .clothing
                case .shopping: .shopping
                case .furniture: .furniture
                case .furnishing: .furnishing
                case .appliance: .appliance
                case .computer: .computer
                case .gadgets: .gadgets
                case .toys, .christmas: .toys
                case .gifts, .presents: .gifts
                case .jewelry: .jewelry
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .clothing: "tshirt" // 􀾠
            case .shopping: "cart" // 􀍩
            case .furniture: "sofa" // 􁐲
            case .furnishing: "curtains.closed" // 􁑸
            case .appliance: "refrigerator" // 􁐞
            case .computer: "desktopcomputer" // 􀙗
            case .gadgets: "headphones" // 􀑈
            case .toys: "teddybear" // 􀑈
            case .gifts: "gift" // 􀲬
            case .jewelry: "crown" // 􀦅
            }
        }
        
        public var name: String {
            switch self {
            case .clothing: String(localized: LocalizedStringResource("Clothing"))
            case .shopping: String(localized: LocalizedStringResource("Shopping"))
            case .furniture: String(localized: LocalizedStringResource("Furniture"))
            case .furnishing: String(localized: LocalizedStringResource("Furnishing"))
            case .appliance: String(localized: LocalizedStringResource("Appliance"))
            case .computer: String(localized: LocalizedStringResource("Computer"))
            case .gadgets: String(localized: LocalizedStringResource("Gadgets"))
            case .toys: String(localized: LocalizedStringResource("Toys"))
            case .gifts: String(localized: LocalizedStringResource("Gifts"))
            case .jewelry: String(localized: LocalizedStringResource("Jewelry"))
            }
        }
        
        public var keywords: [String] {
            Keyword.allCases.filter({ $0.value == self }).map(\.rawValue)
        }
    }
}
