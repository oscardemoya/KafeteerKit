//
//  RepeatInterval.swift
//
//
//  Created by Oscar De Moya on 6/10/21.
//

import Foundation

public enum RepeatInterval: Codable, RawRepresentable, Equatable {
    case preset(frequency: RepeatIntervalFrequency)
    case custom(interval: CustomRepeatInterval)
    
    public static let `default`: RepeatInterval = .preset(frequency: .monthly)
    
    public enum Name: String {
        case never
    }
    
    public var label: String? {
        switch self {
        case .preset(let value): return value.rawValue.capitalized
        case .custom(let value): return String(localized: "Every \(value.description)")
        }
    }
    
    public var rawValue: String {
        switch self {
        case .preset(let frequency): return frequency.rawValue
        case .custom(let interval): return interval.rawValue
        }
    }

    public init?(rawValue: String) {
        if let frequency = RepeatIntervalFrequency(rawValue: rawValue) {
            self = .preset(frequency: frequency)
            return
        }
        if let interval = CustomRepeatInterval(rawValue: rawValue) {
            self = .custom(interval: interval)
            return
        }
        return nil
    }
    
    public static func == (lhs: RepeatInterval, rhs: RepeatInterval) -> Bool {
        switch (lhs, rhs) {
        case (.preset(let lhsValue), .preset(let rhsValue)): return lhsValue == rhsValue
        case (.custom(let lhsValue), .custom(let rhsValue)): return lhsValue == rhsValue
        default: return false
        }
    }
    
    public var calendarUnit: Calendar.Component {
        guard case .preset(let frequency) = self else { return .month }
        switch frequency {
        case .never, .weekly, .halfmonthly, .monthly:
            return .month
        case .quarterly, .semiannual, .yearly:
            return .year
        }
    }
}

public enum RepeatIntervalFrequency: String, Hashable, Codable, Identifiable, CaseIterable {
    case never
    case weekly
    case halfmonthly
    case monthly
    case quarterly
    case semiannual
    case yearly
    
    public var id: Self { self }
    
    public var name: String {
        switch self {
        case .never: return String(localized: "Never")
        case .weekly: return String(localized: "Weekly")
        case .halfmonthly: return String(localized: "Twice Per Month")
        case .monthly: return String(localized: "Monthly")
        case .quarterly: return String(localized: "Quarterly")
        case .semiannual: return String(localized: "Every 6 Months")
        case .yearly: return String(localized: "Yearly")
        }
    }
}

public extension Date {
    func adding(frequencyTimeInterval interval: RepeatIntervalFrequency) -> Date {
        var dateComponent = DateComponents()
        switch interval {
        case .never: break
        case .weekly: dateComponent.day = 7
        case .halfmonthly: break
        case .monthly: dateComponent.month = 1
        case .quarterly: dateComponent.month = 3
        case .semiannual: dateComponent.month = 6
        case .yearly: dateComponent.year = 1
        }
        switch interval {
        case .never: return self
        case .halfmonthly:
            let components = Calendar.current.dateComponents([.day], from: self)
            guard let day = components.day else { return self }
            if day < 15 {
                return Calendar.current.date(bySetting: .day, value: 15, of: self) ?? self
            } else {
                return Calendar.current.date(bySetting: .day, value: 1, of: self) ?? self
            }
        default:
            return Calendar.current.date(byAdding: dateComponent, to: self) ?? self
        }
    }
}

public struct CustomRepeatInterval: Hashable, Codable, CustomStringConvertible, RawRepresentable {
    public var amount: UInt
    public var dateUnit: DateUnit
    
    public var description: String { amount == 1 ? dateUnit.rawValue : "\(amount) \(dateUnit.rawValue)s" }

    public enum DateUnit: String, Codable {
        case day
        case month
        case year
                    
        public var unit: Calendar.Component {
            switch self {
            case .day: return .day
            case .month: return .month
            case .year: return .year
            }
        }
    }
    
    public var rawValue: String { "\(amount).\(dateUnit.rawValue)" }
    
    public init?(rawValue: String) {
        let components = rawValue.components(separatedBy: ".")
        guard components.count == 2 else { return nil }
        guard let first = components.first, let amount = UInt(first) else { return nil }
        guard let last = components.last, let dateUnit = DateUnit(rawValue: last) else { return nil }
        self.amount = amount
        self.dateUnit = dateUnit
    }
}
