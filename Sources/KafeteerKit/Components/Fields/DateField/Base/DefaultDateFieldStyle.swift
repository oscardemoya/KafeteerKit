//
//  DefaultDateFieldStyle.swift
//
//
//  Created by Oscar De Moya on 29/05/24.
//

import SwiftUI

public struct DefaultDateFieldStyle: DateFieldStyle {
    @ViewBuilder
    public func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 0) {
            configuration.label
            configuration.datePicker
        }
        .background(.primaryInputBackground)
        .foregroundColor(.primaryInputForeground)
        .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
        .animation(.easeInOut(duration: 0.2), value: configuration.isExpanded)
    }
}

public extension DateFieldStyle where Self == DefaultDateFieldStyle {
    static var automatic: DefaultDateFieldStyle { .init() }
}
