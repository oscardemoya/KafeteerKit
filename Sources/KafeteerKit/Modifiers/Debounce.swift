//
//  DebounceModifier.swift
//
//
//  Created by Oscar De Moya on 22/05/24.
//

import SwiftUI
import Combine

public extension View {
    func debounce<V: Equatable>(_ value: Binding<V>,
                                after debounceTime: TimeInterval,
                                perform action: @escaping (V) -> Void) -> some View {
        self.modifier(DebounceModifier(value: value, debounceTime: debounceTime, action: action))
    }
}

public struct DebounceModifier<Value: Equatable>: ViewModifier {
    @Binding var value: Value
    let debounceTime: TimeInterval
    let action: ValueAction<Value>?
    private let debouncePublisher = PassthroughSubject<Value, Never>()

    public func body(content: Content) -> some View {
        content
            .onChange(of: value) { _, newValue in
                debouncePublisher.send(newValue)
            }
            .onReceive(
                debouncePublisher
                    .debounce(for:.seconds(debounceTime), scheduler: DispatchQueue.main)
            ) { debouncedValue in
                action?(debouncedValue)
            }
    }
}
