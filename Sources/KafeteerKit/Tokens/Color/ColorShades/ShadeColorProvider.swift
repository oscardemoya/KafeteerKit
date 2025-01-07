//
//  ShadeColorProvider.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/6/25.
//

import SwiftUI

public protocol ShadeColorProvider {
    static func color(shade: ColorShade) -> Color
}
