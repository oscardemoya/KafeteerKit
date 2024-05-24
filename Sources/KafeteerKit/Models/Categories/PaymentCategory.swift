//
//  PaymentCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public enum PaymentCategory: Codable, Hashable, Equatable, Identifiable, RawRepresentable, IconRepresentable {
    case generic(Generic)
    case food(Food)
    case home(Home)
    case utility(Utility)
    case transportation(Transportation)
    case clothing(Clothing)
    case healthcare(Healthcare)
    case personalCare(PersonalCare)
    case entertainment(Entertainment)
    case education(Education)
    case finance(Finance)
    case activity(Activity)
    case maintenance(Maintenance)
    case subscription(Subscription)
    case purchase(Purchase)
    
    public static let `default`: PaymentCategory = .generic(.payment)
    
    public var id: Self { self }
    
    public enum Kind: String, Codable, CaseIterable, Identifiable, IconRepresentable {
        case generic
        case food
        case home
        case utility
        case transportation
        case clothing
        case healthcare
        case personalCare
        case entertainment
        case education
        case finance
        case activity
        case maintenance
        case subscription
        case purchase
        
        public var id: Self { self }
        
        public var name: String {
            switch self {
            case .generic: String(localized: "General")
            case .food: String(localized: "Food")
            case .home: String(localized: "Home")
            case .utility: String(localized: "Utility")
            case .transportation: String(localized: "Transportation")
            case .clothing: String(localized: "Clothing")
            case .healthcare: String(localized: "Healthcare")
            case .personalCare: String(localized: "Personal Care")
            case .entertainment: String(localized: "Entertainment")
            case .education: String(localized: "Education")
            case .finance: String(localized: "Finance")
            case .activity: String(localized: "Activity")
            case .maintenance: String(localized: "Maintenance")
            case .subscription: String(localized: "Subscription")
            case .purchase: String(localized: "Purchase")
            }
        }
        
        public var categoryClass: any CategoryRepresentable.Type {
            switch self {
            case .generic: Generic.self
            case .home: Home.self
            case .food: Food.self
            case .utility: Utility.self
            case .transportation: Transportation.self
            case .clothing: Clothing.self
            case .healthcare: Healthcare.self
            case .personalCare: PersonalCare.self
            case .entertainment: Entertainment.self
            case .education: Education.self
            case .finance: Finance.self
            case .activity: Activity.self
            case .maintenance: Maintenance.self
            case .subscription: Subscription.self
            case .purchase: Purchase.self
            }
        }
        
        public var categories: [PaymentCategory] {
            switch self {
            case .generic: Generic.allCases.map { .generic($0) }
            case .home: Home.allCases.map { .home($0) }
            case .food: Food.allCases.map { .food($0) }
            case .utility: Utility.allCases.map { .utility($0) }
            case .transportation: Transportation.allCases.map { .transportation($0) }
            case .clothing: Clothing.allCases.map { .clothing($0) }
            case .healthcare: Healthcare.allCases.map { .healthcare($0) }
            case .personalCare: PersonalCare.allCases.map { .personalCare($0) }
            case .entertainment: Entertainment.allCases.map { .entertainment($0) }
            case .education: Education.allCases.map { .education($0) }
            case .finance: Finance.allCases.map { .finance($0) }
            case .activity: Activity.allCases.map { .activity($0) }
            case .maintenance: Maintenance.allCases.map { .maintenance($0) }
            case .subscription: Subscription.allCases.map { .subscription($0) }
            case .purchase: Purchase.allCases.map { .purchase($0) }
            }
        }
        
        public var iconName: String {
            switch self {
            case .generic: Generic.payment.iconName // 􀒰
            case .home: Home.mortgage.iconName // 􀎞
            case .food: Food.food.iconName // 􀻐
            case .utility: Utility.waterSupply.iconName // 􁒾
            case .transportation: Transportation.car.iconName // 􀙘
            case .clothing: Clothing.clothing.iconName // 􀙘
            case .healthcare: Healthcare.healthcare.iconName // 􀉩
            case .personalCare: PersonalCare.hygiene.iconName // 􀉩
            case .entertainment: Entertainment.movies.iconName // 􁐇
            case .education: Education.education.iconName // 􀫓
            case .finance: Finance.savings.iconName // 􀖗
            case .activity: Activity.fitness.iconName // 􀐳
            case .maintenance: Maintenance.repair.iconName // 􀤊
            case .subscription: Subscription.cloud.iconName // 􀇂
            case .purchase: Purchase.shopping.iconName // 􀍩
            }
        }
    }
    
    public init(rawValue: String) {
        if let value = Food.Keyword(rawValue: rawValue)?.value {
            self = .food(value)
            return
        }
        if let value = Home.Keyword(rawValue: rawValue)?.value {
            self = .home(value)
            return
        }
        if let value = Utility.Keyword(rawValue: rawValue)?.value {
            self = .utility(value)
            return
        }
        if let value = Transportation.Keyword(rawValue: rawValue)?.value {
            self = .transportation(value)
            return
        }
        if let value = Clothing.Keyword(rawValue: rawValue)?.value {
            self = .clothing(value)
            return
        }
        if let value = Healthcare.Keyword(rawValue: rawValue)?.value {
            self = .healthcare(value)
            return
        }
        if let value = PersonalCare.Keyword(rawValue: rawValue)?.value {
            self = .personalCare(value)
            return
        }
        if let value = Entertainment.Keyword(rawValue: rawValue)?.value {
            self = .entertainment(value)
            return
        }
        if let value = Education.Keyword(rawValue: rawValue)?.value {
            self = .education(value)
            return
        }
        if let value = Finance.Keyword(rawValue: rawValue)?.value {
            self = .finance(value)
            return
        }
        if let value = Activity.Keyword(rawValue: rawValue)?.value {
            self = .activity(value)
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
    
    public var rawValue: String { value.name }
    public var iconName: String { value.iconName }
    public var name: String { value.name }
    public var keywords: [String] { value.keywords }
    
    public static var allCases: [PaymentCategory] {
        Kind.allCases.reduce(into: []) { results, kind in
            results.append(contentsOf: kind.categories)
        }
    }
    
    public static func == (lhs: PaymentCategory, rhs: PaymentCategory) -> Bool {
        lhs.value.stringValue == rhs.value.stringValue
    }
    
    public func hash(into hasher: inout Hasher) {
        var hasher = hasher
        hasher.combine(rawValue)
    }
    
    public var value: any CategoryRepresentable {
        switch self {
        case .generic(let value): value
        case .home(let value): value
        case .food(let value): value
        case .utility(let value): value
        case .transportation(let value): value
        case .clothing(let value): value
        case .healthcare(let value): value
        case .personalCare(let value): value
        case .entertainment(let value): value
        case .education(let value): value
        case .finance(let value): value
        case .activity(let value): value
        case .maintenance(let value): value
        case .subscription(let value): value
        case .purchase(let value): value
        }
    }
    
    public var kind: Kind {
        switch self {
        case .generic: .generic
        case .home: .home
        case .food: .food
        case .utility: .utility
        case .transportation: .transportation
        case .clothing: .clothing
        case .finance: .finance
        case .education: .education
        case .healthcare: .healthcare
        case .personalCare: .personalCare
        case .activity: .activity
        case .entertainment: .entertainment
        case .maintenance: .maintenance
        case .subscription: .subscription
        case .purchase: .purchase
        }
    }
}
