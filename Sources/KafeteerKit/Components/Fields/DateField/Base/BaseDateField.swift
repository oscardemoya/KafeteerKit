//
//  BaseDateField.swift
//
//
//  Created by Oscar De Moya on 29/05/24.
//

import SwiftUI

public struct BaseDateField: View {
    @Environment(\.dateFieldStyle) var style
    @State var titleKey: LocalizedStringKey = ""
    @Binding var date: Date
    var displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date]
    var isOptional: Bool = false
    @State var internalDate: Date? = .now
    @Binding public var isExpanded: Bool

    public init(_ titleKey: LocalizedStringKey,
                selection date: Binding<Date>,
                displayedComponents: DatePicker.Components = [.hourAndMinute, .date],
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
        .padding(.medium)
        .containerShape(.rect)
        .onChange(of: date) { _, newValue in
            internalDate = date
        }
        .onTapGesture {
            date = internalDate ?? .now
            withAnimation {
                isExpanded.toggle()
            }
        }
    }
    
    @ViewBuilder
    var labelText: some View {
        if let internalDate {
            HStack {
                Text(internalDate, style: .date)
                Text(internalDate, style: .time)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        } else {
            Text(titleKey)
                .foregroundColor(.universalPlaceholderText)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    @ViewBuilder
    var trailingView: some View {
        if isOptional, internalDate != nil {
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
                DatePicker(titleKey, selection: $date, displayedComponents: displayedComponents)
                    .datePickerStyle(.graphical)
                    .onChange(of: date) {
                        internalDate = date
                    }
            }
        }
    }
}

#Preview {
    @State var date: Date = .now
    @State var isExpanded1: Bool = false
    @State var isExpanded2: Bool = false
    @State var isExpanded3: Bool = false
    return ScrollView {
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
