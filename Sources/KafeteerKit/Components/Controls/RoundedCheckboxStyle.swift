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
        Image(systemName: configuration.checkedState.showCheck ? "checkmark.circle.fill" : "circle")
            .opacity(configuration.checkedState == .checking ? 0.5 : 1)
            .foregroundColor(.primaryAccent)
            .font(.systemDefault(.title))
            .padding(.small)
    }
}

public extension CheckboxStyle where Self == RoundedCheckboxStyle {
    static var rounded: RoundedCheckboxStyle { .init() }
}
