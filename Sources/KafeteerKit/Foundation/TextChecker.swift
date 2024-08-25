//
//  TextChecker.swift
//
//
//  Created by Oscar De Moya on 19/05/24.
//

import Foundation
import NaturalLanguage

public struct TextChecker {
    
    public struct TaggerData {
        public var name: String?
        public var category: PaymentCategory?
        public var repeatInterval: RepeatInterval?
    }
    
    // Name: First noun
    // Category
    // Repeat Interval
    public static func taggerData(from text: String) -> TaggerData {
        var result = TaggerData()
        let tagger = NLTagger(tagSchemes: [.nameTypeOrLexicalClass])
        tagger.string = text
        let range = text.startIndex..<text.endIndex
        let options: NLTagger.Options = [
            .omitWhitespace,
            .omitOther,
            .joinNames
        ]
        let tags = tagger
            .tags(in: range, unit: .word, scheme: .nameTypeOrLexicalClass, options: options)
            .compactMap { (tag, range) -> TagValue? in
            guard let tag else { return nil }
            let value = String(text[range])
            return (tag: tag, value: value)
        }
        result.name = tags.name
        result.category = tags.category
        if let preset = tags.compactMap({ RepeatIntervalFrequency(rawValue: $0.value) }).first {
            result.repeatInterval = .preset(frequency: preset)
        } else {
            result.repeatInterval = .default
        }
        return result
    }
    
    public struct AmountData {
        public var amount: Double = 0
    }
    
    // Amount
    public static func amountData(from text: String) -> AmountData {
        var result = AmountData()
        guard let value = text.currencyValues.first(where: {
            guard let regex = try? Regex(".*\($0.identifier.regexSubstring)\\s?\($0.amount)(\\s.*|$)") else { return false }
            return text.contains(regex)
        }) else { return result }
        let formatter = NumberFormatter.currency(decimalSeparator: value.separator)
        result.amount = formatter.number(from: value.amount)?.doubleValue ?? 0
        return result
    }
    
    public struct DetectorData {
        public var date: Date?
        public var paymentURL: URL?
    }
    
    // Date
    // Link
    public static func detectorData(from text: String) -> DetectorData {
        var result = DetectorData()
        let types: NSTextCheckingResult.CheckingType = [.date, .link]
        guard let detector = try? NSDataDetector(types: types.rawValue) else { return result }
        let range = NSMakeRange(0, text.count)
        let matches = detector.matches(in: text, options: [], range: range)
        if let date = matches.first(where: { $0.resultType == .date })?.date {
            result.date = date
        }
        if let urlString = matches.first(where: { $0.resultType == .link })?.url?.absoluteString {
            result.paymentURL = URL(string: urlString)
        }
        return result
    }

}

public typealias TagValue = (tag: NLTag, value: String)

public extension [TagValue] {
    var name: String? {
        if let start = firstIndex(where: { $0.tag == .openQuote }),
           let end = firstIndex(where: { $0.tag == .closeQuote }), end > start + 1 {
            return self[start + 1...end - 1].map(\.value).joined(separator: " ")
        }
        let nameTags: [NLTag] = [.organizationName, .personalName, .placeName, .noun]
        let names = filter { nameTags.contains($0.tag) }
        if let name = names.first?.value.capitalized {
            return name
        }
        return filter { $0.tag == .other }.first?.value.capitalized
    }
    
    var category: PaymentCategory {
        if let name, PaymentCategory(rawValue: name) != .default {
            return PaymentCategory(rawValue: name)
        }
        if let category = filteringNames.compactMap({ PaymentCategory(rawValue: $0.value) }).first {
            return category
        }
        return .default
    }
    
    var filteringNames: [TagValue] {
        if let start = firstIndex(where: { $0.tag == .openQuote }),
           let end = firstIndex(where: { $0.tag == .closeQuote }) {
            var array = self
            array.removeSubrange(start...end)
            return array
        }
        let nameTags: [NLTag] = [.organizationName, .personalName, .placeName, .noun]
        let names = filter { nameTags.contains($0.tag) }
        if !names.isEmpty {
            return names
        }
        return filter { $0.tag == .other }
    }
}
