//
//  SquaredCheckboxStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 9/7/24.
//

import SwiftUI

public struct SquaredCheckboxStyle: CheckboxStyle {
    @ViewBuilder
    public func makeBody(configuration: Configuration) -> some View {
        Image(systemName: configuration.checkedState.showCheck ? "checkmark.square.fill" : "square")
            .opacity(configuration.checkedState == .checking ? 0.5 : 1)
            .foregroundColor(configuration.isEnabled ? .primaryAccent : .borderColor)
            .font(.systemDefault(.title))
            .padding(.small)
    }
}

public extension CheckboxStyle where Self == SquaredCheckboxStyle {
    static var squared: SquaredCheckboxStyle { .init() }
}
