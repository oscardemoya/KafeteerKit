//
//  PaymentCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public enum PaymentCategory: Codable, Hashable, Equatable, Identifiable, RawRepresentable, IconRepresentable {
    case general(General)
    case food(Food)
    case transportation(Transportation)
    case clothing(Clothing)
    case home(Home)
    case domestic(Domestic)
    case utility(Utility)
    case appliance(Appliance)
    case electronics(Electronics)
    case furnishing(Furnishing)
    case furniture(Furniture)
    case fixture(Fixture)
    case climateControl(ClimateControl)
    case healthcare(Healthcare)
    case personalCare(PersonalCare)
    case familyCare(FamilyCare)
    case giving(Giving)
    case entertainment(Entertainment)
    case education(Knowledge)
    case professional(Professional)
    case finance(Finance)
    case business(Business)
    case activity(Activity)
    case sports(Sports)
    case hobby(Hobby)
    case celebration(Celebration)
    case maintenance(Automotive)
    case subscription(Subscription)
    
    public static let `default`: PaymentCategory = .general(.payment)
    
    public var id: Self { self }
    
    public enum Kind: String, Codable, CaseIterable, Identifiable, IconRepresentable {
        case general
        case food
        case transportation
        case clothing
        case home
        case domestic
        case utility
        case appliance
        case electronics
        case furnishing
        case furniture
        case fixture
        case climateControl
        case healthcare
        case personalCare
        case familyCare
        case giving
        case entertainment
        case education
        case professional
        case finance
        case business
        case activity
        case sports
        case hobby
        case celebration
        case maintenance
        case subscription
        
        public var id: Self { self }
        public var categoryName: String { categoryClass.categoryName }
        public var iconName: String { categoryClass.categoryIcon.iconName }
        public var categories: [PaymentCategory] { categoryClass.allValues }
        
        public var categoryClass: any CategoryRepresentable.Type {
            switch self {
            case .general: General.self
            case .food: Food.self
            case .transportation: Transportation.self
            case .clothing: Clothing.self
            case .home: Home.self
            case .domestic: Domestic.self
            case .utility: Utility.self
            case .appliance: Appliance.self
            case .electronics: Electronics.self
            case .furnishing: Furnishing.self
            case .furniture: Furniture.self
            case .fixture: Fixture.self
            case .climateControl: ClimateControl.self
            case .healthcare: Healthcare.self
            case .personalCare: PersonalCare.self
            case .familyCare: FamilyCare.self
            case .giving: Giving.self
            case .entertainment: Entertainment.self
            case .education: Knowledge.self
            case .professional: Professional.self
            case .finance: Finance.self
            case .business: Business.self
            case .activity: Activity.self
            case .sports: Sports.self
            case .hobby: Hobby.self
            case .celebration: Celebration.self
            case .maintenance: Automotive.self
            case .subscription: Subscription.self
            }
        }
    }
    
    public init(rawValue: String) {
        self = Self.value(for: rawValue).asPaymentCategory
    }
    
    public init(containing string: String) {
        self = Kind.allCases.reduce(into: []) { results, kind in
            results.append(contentsOf: kind.categories)
        }.sorted {
            $0.name.count > $1.name.count
        }.first { category in
            category.keywords.contains {
                string.replacingOccurrences(of: " ", with: "").localizedCaseInsensitiveContains($0)
            }
        } ?? .default
    }
    
    private static func value(for rawValue: String) -> any CategoryRepresentable {
        if let value = General(keyword: rawValue) { return value }
        if let value = Food(keyword: rawValue) { return value }
        if let value = Transportation(keyword: rawValue) { return value }
        if let value = Clothing(keyword: rawValue) { return value }
        if let value = Home(keyword: rawValue) { return value }
        if let value = Domestic(keyword: rawValue) { return value }
        if let value = Utility(keyword: rawValue) { return value }
        if let value = Appliance(keyword: rawValue) { return value }
        if let value = Electronics(keyword: rawValue) { return value }
        if let value = Furnishing(keyword: rawValue) { return value }
        if let value = Furniture(keyword: rawValue) { return value }
        if let value = Fixture(keyword: rawValue) { return value }
        if let value = ClimateControl(keyword: rawValue) { return value }
        if let value = Healthcare(keyword: rawValue) { return value }
        if let value = PersonalCare(keyword: rawValue) { return value }
        if let value = FamilyCare(keyword: rawValue) { return value }
        if let value = Giving(keyword: rawValue) { return value }
        if let value = Entertainment(keyword: rawValue) { return value }
        if let value = Knowledge(keyword: rawValue) { return value }
        if let value = Professional(keyword: rawValue) { return value }
        if let value = Finance(keyword: rawValue) { return value }
        if let value = Business(keyword: rawValue) { return value }
        if let value = Activity(keyword: rawValue) { return value }
        if let value = Sports(keyword: rawValue) { return value }
        if let value = Celebration(keyword: rawValue) { return value }
        if let value = Automotive(keyword: rawValue) { return value }
        if let value = Subscription(keyword: rawValue) { return value }
        return General.categoryIcon
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
        case .general(let value): value
        case .food(let value): value
        case .transportation(let value): value
        case .clothing(let value): value
        case .home(let value): value
        case .domestic(let value): value
        case .utility(let value): value
        case .appliance(let value): value
        case .electronics(let value): value
        case .furnishing(let value): value
        case .furniture(let value): value
        case .fixture(let value): value
        case .climateControl(let value): value
        case .healthcare(let value): value
        case .personalCare(let value): value
        case .familyCare(let value): value
        case .giving(let value): value
        case .entertainment(let value): value
        case .education(let value): value
        case .professional(let value): value
        case .finance(let value): value
        case .business(let value): value
        case .activity(let value): value
        case .sports(let value): value
        case .hobby(let value): value
        case .celebration(let value): value
        case .maintenance(let value): value
        case .subscription(let value): value
        }
    }
    
    public var kind: Kind {
        switch self {
        case .general: .general
        case .food: .food
        case .transportation: .transportation
        case .clothing: .clothing
        case .home: .home
        case .domestic: .domestic
        case .utility: .utility
        case .appliance: .appliance
        case .electronics: .electronics
        case .furnishing: .furnishing
        case .furniture: .furniture
        case .fixture: .fixture
        case .climateControl: .climateControl
        case .finance: .finance
        case .business: .business
        case .education: .education
        case .professional: .professional
        case .healthcare: .healthcare
        case .personalCare: .personalCare
        case .familyCare: .familyCare
        case .giving: .giving
        case .activity: .activity
        case .sports: .sports
        case .hobby: .hobby
        case .celebration: .celebration
        case .entertainment: .entertainment
        case .maintenance: .maintenance
        case .subscription: .subscription
        }
    }
}
