//
//  DateFormatter.swift
//
//
//  Created by Oscar De Moya on 21/05/24.
//

import Foundation

public extension Date {
    static var today: Date { Calendar.current.startOfDay(for: .now) }
    var startOfYear: Date { startOf(.year) }
    var startOfQuarter: Date { startOf(.quarter) }
    var startOfMonth: Date { startOf(.month) }
    
    func startOf(_ component: Calendar.Component) -> Date {
        Calendar.current.dateInterval(of: component, for: self)?.start ?? self
    }
    
    var endOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)?.end.addingTimeInterval(-1) ?? self
    }
    
    var endOfHalfMonth: Date {
        let date = Calendar.current.startOfDay(for: self)
        let components = Calendar.current.dateComponents([.day], from: date)
        guard let day = components.day else { return self }
        if day < 15 {
            return Calendar.current.date(bySetting: .day, value: 14, of: self) ?? self
        } else {
            return endOfMonth
        }
    }
    
    var isToday: Bool { Calendar.current.isDateInToday(self) }
    var isTomorrow: Bool { Calendar.current.isDateInTomorrow(self) }
    var isYesterday: Bool { Calendar.current.isDateInYesterday(self) }
    var isThisYear: Bool { Calendar.current.isDate(self, equalTo: Date(), toGranularity: .year) }
    
    var relative: String {
        if isToday { return String(localized: "Today", bundle: .module) }
        if isTomorrow { return String(localized: "Tomorrow", bundle: .module) }
        if isYesterday { return String(localized: "Yesterday", bundle: .module) }
        let formatter = RelativeDateTimeFormatter()
        let components = Calendar.current.dateComponents([.year, .month, .day], from: .today, to: self)
        return formatter.localizedString(from: components)
    }
    
    var yearMonthDaySlashed: String {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.yearMonthDaySlashed.rawValue
        return formatter.string(from: self)
    }
    
    var mediumDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
    
    var shortTime: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: self)
    }
    
    var shortMonth: String {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.shortMonth.rawValue
        return formatter.string(from: self)
    }

    var year: Int {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.year.rawValue
        return Int(formatter.string(from: self)) ?? 0
    }
    
    var month: Int {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.month.rawValue
        return Int(formatter.string(from: self)) ?? 0
    }
    
    var day: Int {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.day.rawValue
        return Int(formatter.string(from: self)) ?? 0
    }
    
    var hour: Int {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.hour.rawValue
        return Int(formatter.string(from: self)) ?? 0
    }
    
    var minute: Int {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.minute.rawValue
        return Int(formatter.string(from: self)) ?? 0
    }
    
    var monthOfYear: String {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormat.monthYear.rawValue
        return formatter.string(from: self)
    }
    
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    
    func quarters(from date: Date) -> Int {
        return Calendar.current.dateComponents([.quarter], from: date, to: self).quarter ?? 0
    }
    
    func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
}

public enum DateFormat: String, CaseIterable {
    case iso8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    case iso8601NoMillis = "yyyy-MM-dd'T'HH:mm:ssZ"
    case yearMonthDaySlashed = "yyyy/MM/dd"
    case monthYear = "MMMM yyyy"
    case shortMonth = "MMM"
    case year = "yyyy"
    case month = "MM"
    case day = "d"
    case hour = "HH"
    case minute = "mm"
}

public extension Date.ParseStrategy {
    static var yearMonthDaySlashed = Self(format: "\(year: .defaultDigits)/\(month: .twoDigits)/\(day: .twoDigits)",
                                          locale: .current, timeZone: .current)
}

