//
//  Closeable.swift
//
//
//  Created by Oscar De Moya on 22/05/24.
//

import SwiftUI

public struct CloseableModifier: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    
    public func body(content: Content) -> some View {
        content
#if !os(macOS)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 20))
                            .symbolRenderingMode(.hierarchical)
                    }
                    .foregroundColor(.secondaryForeground)
                }
            }
#endif
    }
}

public extension View {
    func closeable() -> some View {
        modifier(CloseableModifier())
    }
}
