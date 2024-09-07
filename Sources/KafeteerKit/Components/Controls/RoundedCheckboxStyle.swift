//
//  RoundedCheckboxStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 9/7/24.
//

import SwiftUI

public struct RoundedCheckboxStyle: CheckboxStyle {
    @ViewBuilder
    public func makeBody(configuration: Configuration) -> some View {
        Image(systemName: configuration.isChecked ? "checkmark.circle.fill" : "circle")
            .foregroundColor(.primaryAccent)
            .font(.systemDefault(.title))
            .padding(.small)
    }
}

public extension CheckboxStyle where Self == RoundedCheckboxStyle {
    static var rounded: RoundedCheckboxStyle { .init() }
}
