//
//  Animation.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/24/25.
//

import SwiftUI

public extension Animation {
    static var defaultSpring: Animation {
        .spring(response: 0.3, dampingFraction: 0.7)
    }
}
