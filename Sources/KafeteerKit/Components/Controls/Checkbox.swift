//
//  Checkbox.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 9/7/24.
//

import SwiftUI

public struct Checkbox: View {
    public enum CheckedState {
        case unchecked
        case checking
        case checked
        
        var isChecked: Bool {
            if case .checked = self { true } else { false }
        }
        
        var isChecking: Bool {
            if case .checking = self { true } else { false }
        }
        
        var showCheck: Bool {
            if case .unchecked = self { false } else { true }
        }
    }
    
    public enum CheckDelay: Double {
        case none = 0
        case short = 1
        case medium = 2
        case long = 3
    }
    
    @Environment(\.isEnabled) private var isEnabled: Bool
    @Environment(\.checkboxStyle) private var style
    @Binding var isChecked: Bool
    public var checkDelay: CheckDelay = .none
    
    // Private
    @State private var checkedState: CheckedState = .unchecked
    @State private var checkWorkItem: DispatchWorkItem?
    
    public init(isChecked: Binding<Bool>, checkDelay: CheckDelay = .none) {
        self._isChecked = isChecked
        self.checkDelay = checkDelay
    }
    
    public var body: some View {
        style.makeBody(
            configuration: CheckboxStyleConfiguration(
                checkedState: $checkedState,
                isEnabled: isEnabled
            )
        )
        .onAppear {
            checkedState = isChecked ? .checked : .unchecked
        }
        .highPriorityGesture(TapGesture().onEnded(onTapAction))
        .onChange(of: checkedState) {
            isChecked = checkedState.isChecked
        }
    }
    
    func onTapAction() {
        guard isEnabled else { return }
        checkWorkItem?.cancel()
        switch checkedState {
        case .unchecked:
            checkedState = .checking
            let workItem = DispatchWorkItem {
                if checkedState == .checking {
                    checkedState = .checked
                }
            }
            checkWorkItem = workItem
            DispatchQueue.main.asyncAfter(deadline: .now() + checkDelay.rawValue, execute: workItem)
        case .checking, .checked:
            checkedState = .unchecked
        }
    }
}

#Preview {
    @Previewable @State var isChecked: Bool = false
    Checkbox(isChecked: $isChecked)
}
