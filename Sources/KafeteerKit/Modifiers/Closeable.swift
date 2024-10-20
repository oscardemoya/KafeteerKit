//
//  Closeable.swift
//
//
//  Created by Oscar De Moya on 22/05/24.
//

import SwiftUI

public struct ClosableModifier: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.dismissAction) private var dismissAction
    
    public func body(content: Content) -> some View {
        content
#if !os(macOS)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        if let dismissAction {
                            dismissAction()
                        } else {
                            dismiss()
                        }
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
    func closable() -> some View {
        modifier(ClosableModifier())
    }
}
