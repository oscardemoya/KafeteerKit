//
//  DateFieldStyle.swift
//
//
//  Created by Oscar De Moya on 29/05/24.
//

import SwiftUI

// Step 1: Define the Custom Style Protocol

public protocol DateFieldStyle {
    associatedtype Body: View
    typealias Configuration = DateFieldStyleConfiguration
    
    @ViewBuilder func makeBody(configuration: Configuration) -> Body
}

public struct DateFieldStyleConfiguration {
    var label: AnyView
    var datePicker: AnyView
    @Binding var isExpanded: Bool
    
    public init(label: AnyView, datePicker: AnyView, isExpanded: Binding<Bool>) {
        self.label = label
        self.datePicker = datePicker
        self._isExpanded = isExpanded
    }
}

// Step 2: Create a Default Style

public struct DefaultDateFieldStyle: DateFieldStyle {
    @ViewBuilder
    public func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 0) {
            configuration.label
            configuration.datePicker
        }
        .background(.primaryInputBackground)
        .foregroundColor(.primaryForeground)
        .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
        .animation(.easeInOut(duration: 0.2), value: configuration.isExpanded)
    }
}

// Step 3: Extend Your Component to Use the Style

public struct BaseDateField: View {
    @Environment(\.dateFieldStyle) var style
    @State var titleKey: LocalizedStringKey = ""
    @Binding var date: Date
    var isOptional: Bool = false
    @State var internalDate: Date? = .today
    @Binding public var isExpanded: Bool

    public init(_ titleKey: LocalizedStringKey,
         selection date: Binding<Date>,
         isOptional: Bool = false,
         isExpanded: Binding<Bool>) {
        self.titleKey = titleKey
        self._date = date
        self.isOptional = isOptional
        self._isExpanded = isExpanded
    }
    
    public var body: some View {
        style.makeBody(
            configuration: DateFieldStyleConfiguration(
                label: AnyView(label),
                datePicker: AnyView(datePicker),
                isExpanded: $isExpanded
            )
        )
    }
    
    @ViewBuilder
    var label: some View {
        HStack {
            labelText
            trailingView
        }
        .containerShape(.rect)
        .onTapGesture {
            date = internalDate ?? .today
            withAnimation {
                isExpanded.toggle()
            }
        }
    }
    
    @ViewBuilder
    var labelText: some View {
        HStack {
            VStack {
                Group {
                    if let internalDate {
                        Text(internalDate, style: .date)
                    } else {
                        Text(titleKey)
                            .foregroundColor(.universalPlaceholderText)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            Spacer()
        }
    }
    
    @ViewBuilder
    var trailingView: some View {
        if isOptional, let internalDate {
            CircularCloseButton {
                self.internalDate = nil
                withAnimation {
                    isExpanded = false
                }
            }
        }
    }
    
    @ViewBuilder
    var datePicker: some View {
        if isExpanded {
            VStack(spacing: 0) {
                Divider().background(.dividerColor)
                DatePicker(titleKey, selection: $date, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .onChange(of: date) { newValue in
                        internalDate = date
                    }
            }
        }
    }
}

// Step 4: Create a Modifier for Applying the Style

public extension DateFieldStyle where Self == DefaultDateFieldStyle {
    static var automatic: DefaultDateFieldStyle { .init() }
}

// Step 5: Create an Environment Key for the Style

struct DateFieldStyleKey: EnvironmentKey {
    static let defaultValue = AnyDateFieldStyle(style: .automatic)
}

extension EnvironmentValues {
    var dateFieldStyle: AnyDateFieldStyle {
        get { self[DateFieldStyleKey.self] }
        set { self[DateFieldStyleKey.self] = newValue }
    }
}

struct AnyDateFieldStyle: DateFieldStyle {
    private var _makeBody: (Configuration) -> AnyView
    
    init<S: DateFieldStyle>(style: S) {
        _makeBody = { configuration in
            AnyView(style.makeBody(configuration: configuration))
        }
    }
    
    func makeBody(configuration: Configuration) -> some View {
        _makeBody(configuration)
    }
}

public extension View {
    func dateFieldStyle<S: DateFieldStyle>(_ style: S) -> some View {
        environment(\.dateFieldStyle, AnyDateFieldStyle(style: style))
    }
}

// Step 6: Use the Custom Component with a Custom Style

public struct HierarchicalDateFieldStyle: DateFieldStyle {
    var hierarchy: Hierarchy = .primary
    
    public func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 0) {
            configuration.label
            configuration.datePicker
        }
        .background(hierarchy.inputBackgroundColor)
        .foregroundColor(hierarchy.foregroundColor)
        .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
        .animation(.easeInOut(duration: 0.2), value: configuration.isExpanded)
    }
}

public extension DateFieldStyle where Self == HierarchicalDateFieldStyle {
    static func hierarchical(_ hierarchy: Hierarchy) -> Self { .init(hierarchy: hierarchy) }
    static var primary: Self { .init(hierarchy: .primary) }
    static var secondary: Self { .init(hierarchy: .secondary) }
    static var tertiary: Self { .init(hierarchy: .tertiary) }
}

struct TestView: View {
    @State var date: Date = .today
    @State var isExpanded1: Bool = false
    @State var isExpanded2: Bool = false
    @State var isExpanded3: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                BaseDateField("Date", selection: $date, isExpanded: $isExpanded1)
                    .dateFieldStyle(.primary)
                BaseDateField("Date", selection: $date, isExpanded: $isExpanded2)
                    .dateFieldStyle(.secondary)
                BaseDateField("Date", selection: $date, isExpanded: $isExpanded3)
                    .dateFieldStyle(.tertiary)
            }
        }
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    TestView()
}
