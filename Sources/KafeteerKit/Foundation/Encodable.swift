//
//  Encodable.swift
//  
//
//  Created by Oscar De Moya on 19/05/24.
//

import Foundation

public extension Encodable {
    var jsonPrettyPrintedString: String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        guard let jsonData = try? encoder.encode(self) else { return nil }
        return String(data: jsonData, encoding: .utf8)
    }
}
