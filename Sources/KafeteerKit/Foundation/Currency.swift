//
//  File.swift
//  
//
//  Created by Oscar De Moya on 19/05/24.
//

import Foundation

extension String {
    var currencyValues: [(separator: Separator, identifier: CurrencyIdentifier, amount: String)] {
        Separator.allCases.compactMap { separator in
            var regex: Regex<(Substring, identifier: Substring, amount: Substring, Substring?, Substring?, Substring?)>
            switch separator {
            case .dot:
                regex = #/(?<identifier>[$|€|£|¥|₣|₹|₩|₱]|[A-Z]{3})(?<amount>\s?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9][0-9])?)/#
            case .comma:
                regex = #/(?<identifier>[$|€|£|¥|₣|₹|₩|₱]|[A-Z]{3})(?<amount>\s?([0-9]{1,3}\.([0-9]{3}\.)*[0-9]{3}|[0-9]+)?(,[0-9][0-9])?)/#
            }
            regex = regex.dotMatchesNewlines()
            return matches(of: regex).compactMap {
                let rawValue = String($0.output.identifier)
                if let identifier = CurrencyIdentifier(rawValue: rawValue) {
                    return (separator: separator, identifier: identifier, amount: String($0.output.amount))
                }
                return nil
            }.first
        }
    }
}

public enum Separator: String, CaseIterable {
    case dot = "."
    case comma = ","
    
    var groupingSeparator: Separator {
        switch self {
        case .dot: .comma
        case .comma: .dot
        }
    }
}

public enum CurrencyIdentifier: RawRepresentable {
    case symbol(CurrencySymbol)
    case code(String)
    
    public var rawValue: String {
        switch self {
        case .symbol(let symbol): symbol.rawValue
        case .code(let code): code
        }
    }
    
    public var regexSubstring: String {
        switch self {
        case .symbol(let symbol): "\\\(symbol.rawValue)"
        case .code(let code): code
        }
    }
    
    public init?(rawValue: String) {
        if let symbol = CurrencySymbol(rawValue: rawValue) {
            self = .symbol(symbol)
        } else if rawValue.count == 3, CurrencyCodes.list.contains(rawValue) {
            self = .code(rawValue)
        } else {
            return nil
        }
    }
}

public enum CurrencySymbol: String, CaseIterable {
    case dollar = "$"
    case euro = "€"
    case pound = "£"
    case yen = "¥"
    case franc = "₣"
    case rupee = "₹"
    case won = "₩"
    case peso = "₱"
}

public struct CurrencyCodes {
    static let list: [String] = [
        "AED", // United Arab Emirates Dirham
        "AFN", // Afghan Afghani
        "ALL", // Albanian Lek
        "AMD", // Armenian Dram
        "ANG", // Netherlands Antillean Guilder
        "AOA", // Angolan Kwanza
        "ARS", // Argentine Peso
        "AUD", // Australian Dollar
        "AWG", // Aruban Florin
        "AZN", // Azerbaijani Manat
        "BAM", // Bosnia-Herzegovina Convertible Mark
        "BBD", // Barbadian Dollar
        "BDT", // Bangladeshi Taka
        "BGN", // Bulgarian Lev
        "BHD", // Bahraini Dinar
        "BIF", // Burundian Franc
        "BMD", // Bermudian Dollar
        "BND", // Brunei Dollar
        "BOB", // Bolivian Boliviano
        "BRL", // Brazilian Real
        "BSD", // Bahamian Dollar
        "BTN", // Bhutanese Ngultrum
        "BWP", // Botswanan Pula
        "BYN", // Belarusian Ruble
        "BZD", // Belize Dollar
        "CAD", // Canadian Dollar
        "CDF", // Congolese Franc
        "CHF", // Swiss Franc
        "CLP", // Chilean Peso
        "CNY", // Chinese Yuan
        "COP", // Colombian Peso
        "CRC", // Costa Rican Colón
        "CUP", // Cuban Peso
        "CVE", // Cape Verdean Escudo
        "CZK", // Czech Koruna
        "DJF", // Djiboutian Franc
        "DKK", // Danish Krone
        "DOP", // Dominican Peso
        "DZD", // Algerian Dinar
        "EGP", // Egyptian Pound
        "ERN", // Eritrean Nakfa
        "ETB", // Ethiopian Birr
        "EUR", // Euro
        "FJD", // Fijian Dollar
        "FKP", // Falkland Islands Pound
        "FOK", // Faroese Króna
        "GBP", // British Pound Sterling
        "GEL", // Georgian Lari
        "GGP", // Guernsey Pound
        "GHS", // Ghanaian Cedi
        "GIP", // Gibraltar Pound
        "GMD", // Gambian Dalasi
        "GNF", // Guinean Franc
        "GTQ", // Guatemalan Quetzal
        "GYD", // Guyanese Dollar
        "HKD", // Hong Kong Dollar
        "HNL", // Honduran Lempira
        "HRK", // Croatian Kuna
        "HTG", // Haitian Gourde
        "HUF", // Hungarian Forint
        "IDR", // Indonesian Rupiah
        "ILS", // Israeli New Shekel
        "IMP", // Isle of Man Pound
        "INR", // Indian Rupee
        "IQD", // Iraqi Dinar
        "IRR", // Iranian Rial
        "ISK", // Icelandic Króna
        "JEP", // Jersey Pound
        "JMD", // Jamaican Dollar
        "JOD", // Jordanian Dinar
        "JPY", // Japanese Yen
        "KES", // Kenyan Shilling
        "KGS", // Kyrgyzstani Som
        "KHR", // Cambodian Riel
        "KID", // Kiribati Dollar
        "KMF", // Comorian Franc
        "KRW", // South Korean Won
        "KWD", // Kuwaiti Dinar
        "KYD", // Cayman Islands Dollar
        "KZT", // Kazakhstani Tenge
        "LAK", // Lao Kip
        "LBP", // Lebanese Pound
        "LKR", // Sri Lankan Rupee
        "LRD", // Liberian Dollar
        "LSL", // Lesotho Loti
        "LYD", // Libyan Dinar
        "MAD", // Moroccan Dirham
        "MDL", // Moldovan Leu
        "MGA", // Malagasy Ariary
        "MKD", // Macedonian Denar
        "MMK", // Myanmar Kyat
        "MNT", // Mongolian Tögrög
        "MOP", // Macanese Pataca
        "MRU", // Mauritanian Ouguiya
        "MUR", // Mauritian Rupee
        "MVR", // Maldivian Rufiyaa
        "MWK", // Malawian Kwacha
        "MXN", // Mexican Peso
        "MYR", // Malaysian Ringgit
        "MZN", // Mozambican Metical
        "NAD", // Namibian Dollar
        "NGN", // Nigerian Naira
        "NIO", // Nicaraguan Córdoba
        "NOK", // Norwegian Krone
        "NPR", // Nepalese Rupee
        "NZD", // New Zealand Dollar
        "OMR", // Omani Rial
        "PAB", // Panamanian Balboa
        "PEN", // Peruvian Sol
        "PGK", // Papua New Guinean Kina
        "PHP", // Philippine Peso
        "PKR", // Pakistani Rupee
        "PLN", // Polish Złoty
        "PYG", // Paraguayan Guaraní
        "QAR", // Qatari Riyal
        "RON", // Romanian Leu
        "RSD", // Serbian Dinar
        "RUB", // Russian Ruble
        "RWF", // Rwandan Franc
        "SAR", // Saudi Riyal
        "SBD", // Solomon Islands Dollar
        "SCR", // Seychellois Rupee
        "SDG", // Sudanese Pound
        "SEK", // Swedish Krona
        "SGD", // Singapore Dollar
        "SHP", // Saint Helena Pound
        "SLE", // Sierra Leonean Leone
        "SLL", // Sierra Leonean Leone
        "SOS", // Somali Shilling
        "SRD", // Surinamese Dollar
        "SSP", // South Sudanese Pound
        "STN", // São Tomé and Príncipe Dobra
        "SYP", // Syrian Pound
        "SZL", // Eswatini Lilangeni
        "THB", // Thai Baht
        "TJS", // Tajikistani Somoni
        "TMT", // Turkmenistani Manat
        "TND", // Tunisian Dinar
        "TOP", // Tongan Paʻanga
        "TRY", // Turkish Lira
        "TTD", // Trinidad and Tobago Dollar
        "TVD", // Tuvaluan Dollar
        "TWD", // New Taiwan Dollar
        "TZS", // Tanzanian Shilling
        "UAH", // Ukrainian Hryvnia
        "UGX", // Ugandan Shilling
        "USD", // United States Dollar
        "UYU", // Uruguayan Peso
        "UZS", // Uzbekistani Som
        "VED", // Venezuelan Bolívar Digital
        "VES", // Venezuelan Bolívar Soberano
        "VND", // Vietnamese Đồng
        "VUV", // Vanuatu Vatu
        "WST", // Samoan Tālā
        "XAF", // Central African CFA Franc
        "XCD", // East Caribbean Dollar
        "XDR", // Special Drawing Rights
        "XOF", // West African CFA Franc
        "XPF", // CFP Franc (Franc Pacifique)
        "YER", // Yemeni Rial
        "ZAR", // South African Rand
        "ZMW", // Zambian Kwacha
        "ZWL"  // Zimbabwean Dollar
    ]

}
