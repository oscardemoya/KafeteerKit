//
//  Log.swift
//
//
//  Created by Oscar De Moya on 21/05/24.
//

import Foundation
import OSLog

public let logger = {
    Config.shared.isLoggingEnabled ? Logger(subsystem: Bundle.identifier, category: "general") : Logger(.disabled)
}()
