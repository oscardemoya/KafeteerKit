//
//  ModalView.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/24/25.
//

import SwiftUI

public struct ModalView<Content: View>: View {
    @Binding public var isPresented: Bool
    public var onDismiss: Action? = nil
    @ViewBuilder public var content: () -> Content
    
    public init(isPresented: Binding<Bool>, onDismiss: Action? = nil, content: @escaping () -> Content) {
        self._isPresented = isPresented
        self.onDismiss = onDismiss
        self.content = content
    }
    
    public var body: some View {
        ZStack {
            VStack {
                if isPresented {
                    OverlayView()
                }
            }
            .opacity(isPresented ? 1 : 0)
            .animation(.easeOut, value: isPresented)
            .edgesIgnoringSafeArea(.all)
            GeometryReader { geometry in
                VStack {
                    if isPresented {
                        ScrollView {
                            content()
                                .frame(maxWidth: .infinity, minHeight: geometry.size.height)
                                .background(
                                    Color.clear
                                        .frame(maxWidth: .infinity, minHeight: geometry.size.height)
                                        .contentShape(.rect)
                                        .onTapGesture {
                                            withAnimation {
                                                onDismiss?()
                                            }
                                        }
                                )
                        }
                        .scrollDismissesKeyboard(.interactively)
                    }
                }
            }
            .scaleEffect(isPresented ? 1 : 0.8)
            .animation(.defaultSpring, value: isPresented)
        }
    }
}
