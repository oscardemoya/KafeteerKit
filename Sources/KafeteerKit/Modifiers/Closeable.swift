//
//  Closeable.swift
//
//
//  Created by Oscar De Moya on 22/05/24.
//

import SwiftUI

public struct CloseableModifier: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    @State var navigationTitle: LocalizedStringKey
    
    public func body(content: Content) -> some View {
        content
            .background(.tertiaryBackground)
            .navigationTitle(navigationTitle)
#if !os(macOS)
            .toolbarBackground(.barBackground, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 20))
                            .symbolRenderingMode(.hierarchical)
                    }
                    .foregroundColor(.primaryForeground)
                }
            }
#endif
    }
}

public extension View {
    func closeable(navigationTitle: LocalizedStringKey) -> some View {
        modifier(CloseableModifier(navigationTitle: navigationTitle))
    }
}
