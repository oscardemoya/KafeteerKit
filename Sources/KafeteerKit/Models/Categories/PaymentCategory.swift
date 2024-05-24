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
    case familyCare(FamilyCare)
    case entertainment(Entertainment)
    case education(Education)
    case finance(Finance)
    case activity(Activity)
    case event(Event)
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
        case familyCare
        case entertainment
        case education
        case finance
        case activity
        case event
        case maintenance
        case subscription
        case purchase
        
        public var id: Self { self }
        public var categoryName: String { categoryClass.categoryName }
        public var iconName: String { categoryClass.defaultValue.iconName }
        
        public var categoryClass: any CategoryRepresentable.Type {
            switch self {
            case .generic: Generic.self
            case .food: Food.self
            case .home: Home.self
            case .utility: Utility.self
            case .transportation: Transportation.self
            case .clothing: Clothing.self
            case .healthcare: Healthcare.self
            case .personalCare: PersonalCare.self
            case .familyCare: FamilyCare.self
            case .entertainment: Entertainment.self
            case .education: Education.self
            case .finance: Finance.self
            case .activity: Activity.self
            case .event: Event.self
            case .maintenance: Maintenance.self
            case .subscription: Subscription.self
            case .purchase: Purchase.self
            }
        }
        
        public var categories: [PaymentCategory] {
            switch self {
            case .generic: Generic.allCases.map { .generic($0) }
            case .food: Food.allCases.map { .food($0) }
            case .home: Home.allCases.map { .home($0) }
            case .utility: Utility.allCases.map { .utility($0) }
            case .transportation: Transportation.allCases.map { .transportation($0) }
            case .clothing: Clothing.allCases.map { .clothing($0) }
            case .healthcare: Healthcare.allCases.map { .healthcare($0) }
            case .personalCare: PersonalCare.allCases.map { .personalCare($0) }
            case .familyCare: FamilyCare.allCases.map { .familyCare($0) }
            case .entertainment: Entertainment.allCases.map { .entertainment($0) }
            case .education: Education.allCases.map { .education($0) }
            case .finance: Finance.allCases.map { .finance($0) }
            case .activity: Activity.allCases.map { .activity($0) }
            case .event: Event.allCases.map { .event($0) }
            case .maintenance: Maintenance.allCases.map { .maintenance($0) }
            case .subscription: Subscription.allCases.map { .subscription($0) }
            case .purchase: Purchase.allCases.map { .purchase($0) }
            }
        }
    }
    
    public init(rawValue: String) {
        self = Self.value(for: rawValue).asPaymentCategory
    }
    
    private static func value(for rawValue: String) -> any CategoryRepresentable {
        if let value = Generic(keyword: rawValue) { return value }
        if let value = Food(keyword: rawValue) { return value }
        if let value = Home(keyword: rawValue) { return value }
        if let value = Utility(keyword: rawValue) { return value }
        if let value = Transportation(keyword: rawValue) { return value }
        if let value = Clothing(keyword: rawValue) { return value }
        if let value = Healthcare(keyword: rawValue) { return value }
        if let value = PersonalCare(keyword: rawValue) { return value }
        if let value = FamilyCare(keyword: rawValue) { return value }
        if let value = Entertainment(keyword: rawValue) { return value }
        if let value = Education(keyword: rawValue) { return value }
        if let value = Finance(keyword: rawValue) { return value }
        if let value = Activity(keyword: rawValue) { return value }
        if let value = Event(keyword: rawValue) { return value }
        if let value = Maintenance(keyword: rawValue) { return value }
        if let value = Subscription(keyword: rawValue) { return value }
        if let value = Purchase(keyword: rawValue) { return value }
        return Generic.defaultValue
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
        case .familyCare(let value): value
        case .entertainment(let value): value
        case .education(let value): value
        case .finance(let value): value
        case .activity(let value): value
        case .event(let value): value
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
        case .familyCare: .familyCare
        case .activity: .activity
        case .event: .event
        case .entertainment: .entertainment
        case .maintenance: .maintenance
        case .subscription: .subscription
        case .purchase: .purchase
        }
    }
}
