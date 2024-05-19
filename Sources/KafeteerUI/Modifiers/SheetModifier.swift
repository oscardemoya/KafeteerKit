//
//  FixedHeightSheetModifier.swift
//  
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

private struct FixedHeightSheetModifier<Value: View>: ViewModifier {
    @Binding var isPresented: Bool
    var onDismiss: (() -> Void)?
    @ViewBuilder let sheetContent: () -> Value
    @State private var sheetHeight: CGFloat = .zero
    
    func body(content: Content) -> some View {
        content
            .sheet(isPresented: $isPresented, onDismiss: onDismiss) {
                sheetContent()
                    .onSizeChange { size in
                        sheetHeight = size.height
                    }
                    .presentationDetents([.height(sheetHeight)])
                    .presentationDragIndicator(.visible)
            }
    }
}

// MARK: View Extension

public extension View {
    func fixedHeightSheet<Content>(isPresented: Binding<Bool>,
                                   onDismiss: (() -> Void)? = nil,
                                   @ViewBuilder content: @escaping () -> Content) -> some View where Content : View {
        modifier(FixedHeightSheetModifier(
            isPresented: isPresented,
            onDismiss: onDismiss,
            sheetContent: content)
        )
    }
}




