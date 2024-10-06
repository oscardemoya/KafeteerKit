//
//  CheckboxStyle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 9/7/24.
//

import SwiftUI

public protocol CheckboxStyle {
    associatedtype Body: View
    typealias Configuration = CheckboxStyleConfiguration
    
    @ViewBuilder func makeBody(configuration: Configuration) -> Body
}

public extension CheckboxStyle where Self == SquaredCheckboxStyle {
    static var `default`: SquaredCheckboxStyle { .init() }
}

public struct CheckboxStyleConfiguration {
    @Binding var checkedState: Checkbox.CheckedState
    
    public init(checkedState: Binding<Checkbox.CheckedState>) {
        self._checkedState = checkedState
    }
}

extension EnvironmentValues {
    @Entry var checkboxStyle = AnyCheckboxStyle(style: .default)
}

public extension View {
    func checkboxStyle<S: CheckboxStyle>(_ style: S) -> some View {
        environment(\.checkboxStyle, AnyCheckboxStyle(style: style))
    }
}

struct AnyCheckboxStyle: CheckboxStyle {
    private var _makeBody: (Configuration) -> AnyView
    
    init<S: CheckboxStyle>(style: S) {
        _makeBody = { configuration in
            AnyView(style.makeBody(configuration: configuration))
        }
    }
    
    func makeBody(configuration: Configuration) -> some View {
        _makeBody(configuration)
    }
}
