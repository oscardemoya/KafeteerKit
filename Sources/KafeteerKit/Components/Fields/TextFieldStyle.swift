//
//  TextFieldStyle.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct HierarchicalTextFieldStyle: TextFieldStyle {
    var hierarchy: Hierarchy = .primary
    
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.medium)
            .background(hierarchy.inputBackgroundColor)
            .foregroundStyle(hierarchy.inputForegroundColor)
            .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
    }
}

public extension TextFieldStyle where Self == HierarchicalTextFieldStyle {
    static var primary: HierarchicalTextFieldStyle { .init(hierarchy: .primary) }
    static var secondary: HierarchicalTextFieldStyle { .init(hierarchy: .secondary) }
    static var tertiary: HierarchicalTextFieldStyle { .init(hierarchy: .tertiary) }
    static var quaternary: HierarchicalTextFieldStyle { .init(hierarchy: .quaternary) }
}

public extension Hierarchy {
    var textFieldStyle: HierarchicalTextFieldStyle {
        switch self {
        case .primary: .primary
        case .secondary: .secondary
        case .tertiary: .tertiary
        case .quaternary: .quaternary
        }
    }
}

#Preview {
    @State var text: String = ""
    return VStack {
        TextField(String("Placeholder"), text: $text).textFieldStyle(.primary)
        TextField(String("Placeholder"), text: $text).textFieldStyle(.secondary)
        TextField(String("Placeholder"), text: $text).textFieldStyle(.tertiary)
        TextField(String("Placeholder"), text: $text).textFieldStyle(.quaternary)
    }
    .padding()
}
