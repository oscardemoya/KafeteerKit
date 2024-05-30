//
//  HierarchicalDateFieldStyle.swift
//
//
//  Created by Oscar De Moya on 29/05/24.
//

import SwiftUI

public struct HierarchicalDateFieldStyle: DateFieldStyle {
    var hierarchy: Hierarchy = .primary
    
    public func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 0) {
            configuration.label
            configuration.datePicker
        }
        .background(hierarchy.inputBackgroundColor)
        .foregroundStyle(hierarchy.inputForegroundColor)
        .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
        .animation(.easeInOut(duration: 0.2), value: configuration.isExpanded)
    }
}

public extension DateFieldStyle where Self == HierarchicalDateFieldStyle {
    static func hierarchical(_ hierarchy: Hierarchy) -> Self { .init(hierarchy: hierarchy) }
    static var primary: Self { .init(hierarchy: .primary) }
    static var secondary: Self { .init(hierarchy: .secondary) }
    static var tertiary: Self { .init(hierarchy: .tertiary) }
}
