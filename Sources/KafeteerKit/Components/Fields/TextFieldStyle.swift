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
            .padding()
            .background(hierarchy.inputBackgroundColor)
            .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
    }
}

public extension TextFieldStyle where Self == HierarchicalTextFieldStyle {
    static var primary: HierarchicalTextFieldStyle { .init(hierarchy: .primary) }
    static var secondary: HierarchicalTextFieldStyle { .init(hierarchy: .secondary) }
    static var tertiary: HierarchicalTextFieldStyle { .init(hierarchy: .tertiary) }
}

public extension Hierarchy {
    var textFieldStyle: HierarchicalTextFieldStyle {
        switch self {
        case .primary: .primary
        case .secondary: .secondary
        case .tertiary: .tertiary
        }
    }
}

#Preview {
    @State var text: String = ""
    return VStack {
        TextField("Primary", text: $text).textFieldStyle(.primary)
        TextField("Secondary", text: $text).textFieldStyle(.secondary)
        TextField("Tertiary", text: $text).textFieldStyle(.tertiary)
    }
    .padding()
}
