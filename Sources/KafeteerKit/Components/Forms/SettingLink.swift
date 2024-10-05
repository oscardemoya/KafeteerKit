//
//  SettingLink.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 10/5/24.
//

import SwiftUI

public struct SettingLink<Label>: View where Label: View {
    var label: () -> Label
    var action: @MainActor () -> Void
    
    public init(action: @escaping @MainActor () -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }
    
    public var body: some View {
        HStack {
            label()
                .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "chevron.right")
                .foregroundStyle(.borderColor)
                .font(.footnote)
                .fontWeight(.bold)
        }
        .contentShape(.rect)
        .onTapGesture {
            action()
        }
    }
}

public extension SettingLink where Label == Text {
    init(_ titleKey: LocalizedStringKey, action: @escaping @MainActor () -> Void) {
        self.label = {
            Text(titleKey)
        }
        self.action = action
    }
}

#Preview {
    SettingLink("Title") {}
}
