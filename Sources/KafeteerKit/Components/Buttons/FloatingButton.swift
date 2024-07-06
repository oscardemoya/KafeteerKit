//
//  FloatingButton.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct FloatingButton: View {
    @Binding public var isOn: Bool
    public var icon: Image
    public var action: Action
    
    public init(isOn: Binding<Bool>, icon: Image = Image(systemName: "plus"), action: @escaping Action) {
        self._isOn = isOn
        self.icon = icon
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            icon
                .font(.system(size: 24))
                .rotationEffect(.degrees(isOn ? 45 : 0))
                .animation(.easeOut, value: isOn)
                .padding(8)
        }
        .tint(.primaryAccent)
        .foregroundColor(.primaryAccentForeground)
        .buttonStyle(.borderedProminent)
        .clipShape(.circle)
        .frame(width: 40, height: 40)
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .shadowStyle(.medium)
    }
}

#Preview {
    @State var isAdding: Bool = false
    return FloatingButton(isOn: $isAdding) { isAdding.toggle() }
}
