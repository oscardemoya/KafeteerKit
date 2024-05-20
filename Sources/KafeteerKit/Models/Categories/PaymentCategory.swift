//
//  PaymentCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public enum PaymentCategory: Codable, Hashable, Equatable, Identifiable, CategoryRepresentable {
    case generic(Generic)
    case home(Home)
    case utility(Utility)
    case finance(Finance)
    case personal(Personal)
    case activity(Activity)
    case entertainment(Entertainment)
    case transportation(Transportation)
    case maintenance(Maintenance)
    case subscription(Subscription)
    case purchase(Purchase)
    
    public static let `default`: PaymentCategory = .generic(.default)
    
    public var id: Self { self }
    
    public enum Kind: String, Codable, CaseIterable, Identifiable, IconRepresentable {
        case generic
        case home
        case utility
        case finance
        case personal
        case activity
        case entertainment
        case transportation
        case maintenance
        case subscription
        case purchase
        
        public var id: Self { self }
        
        public var name: String {
            switch self {
            case .generic: String(localized: LocalizedStringResource("General"))
            case .home: String(localized: LocalizedStringResource("Home"))
            case .utility: String(localized: LocalizedStringResource("Utility"))
            case .finance: String(localized: LocalizedStringResource("Finance"))
            case .personal: String(localized: LocalizedStringResource("Personal"))
            case .activity: String(localized: LocalizedStringResource("Activity"))
            case .entertainment: String(localized: LocalizedStringResource("Entertainment"))
            case .transportation: String(localized: LocalizedStringResource("Transportation"))
            case .maintenance: String(localized: LocalizedStringResource("Maintenance"))
            case .subscription: String(localized: LocalizedStringResource("Subscription"))
            case .purchase: String(localized: LocalizedStringResource("Purchase"))
            }
        }
        
        public var categories: [PaymentCategory] {
            switch self {
            case .generic: Generic.allCases.map { .generic($0) }
            case .home: Home.allCases.map { .home($0) }
            case .utility: Utility.allCases.map { .utility($0) }
            case .finance: Finance.allCases.map { .finance($0) }
            case .personal: Personal.allCases.map { .personal($0) }
            case .activity: Activity.allCases.map { .activity($0) }
            case .entertainment: Entertainment.allCases.map { .entertainment($0) }
            case .transportation: Transportation.allCases.map { .transportation($0) }
            case .maintenance: Maintenance.allCases.map { .maintenance($0) }
            case .subscription: Subscription.allCases.map { .subscription($0) }
            case .purchase: Purchase.allCases.map { .purchase($0) }
            }
        }
        
        public var iconName: String {
            switch self {
            case .generic: Generic.default.iconName // 􀤏
            case .home: Home.mortgage.iconName // 􀎞
            case .utility: Utility.water.iconName // 􁒾
            case .finance: Finance.savings.iconName // 􀖗
            case .personal: Personal.personalCare.iconName // 􀉩
            case .activity: Activity.fitness.iconName // 􀐳
            case .entertainment: Entertainment.movies.iconName // 􁐇
            case .transportation: Transportation.car.iconName // 􀙘
            case .maintenance: Maintenance.repair.iconName // 􀤊
            case .subscription: Subscription.cloud.iconName // 􀇂
            case .purchase: Purchase.shopping.iconName // 􀍩
            }
        }
    }
    
    public static var allCases: [PaymentCategory] {
        Kind.allCases.reduce(into: []) { results, kind in
            results.append(contentsOf: kind.categories)
        }
    }
    
    public init(rawValue: String) {
        if let value = Home.Keyword(rawValue: rawValue)?.value {
            self = .home(value)
            return
        }
        if let value = Utility.Keyword(rawValue: rawValue)?.value {
            self = .utility(value)
            return
        }
        if let value = Finance.Keyword(rawValue: rawValue)?.value {
            self = .finance(value)
            return
        }
        if let value = Personal.Keyword(rawValue: rawValue)?.value {
            self = .personal(value)
            return
        }
        if let value = Activity.Keyword(rawValue: rawValue)?.value {
            self = .activity(value)
            return
        }
        if let value = Entertainment.Keyword(rawValue: rawValue)?.value {
            self = .entertainment(value)
            return
        }
        if let value = Transportation.Keyword(rawValue: rawValue)?.value {
            self = .transportation(value)
            return
        }
        if let value = Maintenance.Keyword(rawValue: rawValue)?.value {
            self = .maintenance(value)
            return
        }
        if let value = Subscription.Keyword(rawValue: rawValue)?.value {
            self = .subscription(value)
            return
        }
        if let value = Purchase.Keyword(rawValue: rawValue)?.value {
            self = .purchase(value)
            return
        }
        self = .default
    }
    
    public var rawValue: String {
        switch self {
        case .generic(let value): value.rawValue
        case .home(let value): value.rawValue
        case .utility(let value): value.rawValue
        case .finance(let value): value.rawValue
        case .personal(let value): value.rawValue
        case .activity(let value): value.rawValue
        case .entertainment(let value): value.rawValue
        case .transportation(let value): value.rawValue
        case .maintenance(let value): value.rawValue
        case .subscription(let value): value.rawValue
        case .purchase(let value): value.rawValue
        }
    }
    
    public func hash(into hasher: inout Hasher) {
        var hasher = hasher
        hasher.combine(rawValue)
    }
    
    public static func == (lhs: PaymentCategory, rhs: PaymentCategory) -> Bool {
        switch (lhs, rhs) {
        case (.generic(let lhsValue), .generic(let rhsValue)): lhsValue == rhsValue
        case (.home(let lhsValue), .home(let rhsValue)): lhsValue == rhsValue
        case (.utility(let lhsValue), .utility(let rhsValue)): lhsValue == rhsValue
        case (.finance(let lhsValue), .finance(let rhsValue)): lhsValue == rhsValue
        case (.personal(let lhsValue), .personal(let rhsValue)): lhsValue == rhsValue
        case (.activity(let lhsValue), .activity(let rhsValue)): lhsValue == rhsValue
        case (.entertainment(let lhsValue), .entertainment(let rhsValue)): lhsValue == rhsValue
        case (.transportation(let lhsValue), .transportation(let rhsValue)): lhsValue == rhsValue
        case (.maintenance(let lhsValue), .maintenance(let rhsValue)): lhsValue == rhsValue
        case (.subscription(let lhsValue), .subscription(let rhsValue)): lhsValue == rhsValue
        case (.purchase(let lhsValue), .purchase(let rhsValue)): lhsValue == rhsValue
        default: false
        }
    }
    
    public var iconName: String {
        switch self {
        case .generic(let value): value.iconName
        case .home(let value): value.iconName
        case .utility(let value): value.iconName
        case .finance(let value): value.iconName
        case .personal(let value): value.iconName
        case .activity(let value): value.iconName
        case .entertainment(let value): value.iconName
        case .transportation(let value): value.iconName
        case .maintenance(let value): value.iconName
        case .subscription(let value): value.iconName
        case .purchase(let value): value.iconName
        }
    }
    
    public var name: String {
        switch self {
        case .generic(let value): value.name
        case .home(let value): value.name
        case .utility(let value): value.name
        case .finance(let value): value.name
        case .personal(let value): value.name
        case .activity(let value): value.name
        case .entertainment(let value): value.name
        case .transportation(let value): value.name
        case .maintenance(let value): value.name
        case .subscription(let value): value.name
        case .purchase(let value): value.name
        }
    }
    
    public var kind: Kind {
        switch self {
        case .generic: .generic
        case .home: .home
        case .utility: .utility
        case .finance: .finance
        case .personal: .personal
        case .activity: .activity
        case .entertainment: .entertainment
        case .transportation: .transportation
        case .maintenance: .maintenance
        case .subscription: .subscription
        case .purchase: .purchase
        }
    }
}
