//
//  Bundle.swift
//  
//
//  Created by Oscar De Moya on 21/05/24.
//

import Foundation

extension Bundle {
    static var identifier: String {
        guard let bundleIdentifier = Bundle.main.bundleIdentifier else {
            fatalError("Unable retrieve the bundle identifier")
        }
        return bundleIdentifier
    }
}
