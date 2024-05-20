//
//  BaseDateField.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

struct BaseDateField: View {
    @State var titleKey: LocalizedStringKey = ""
    @Binding var date: Date
    var isOptional: Bool = false
    @State var internalDate: Date? = .today
    @State var isExpanded: Bool = false
    var onExpandChange: ValueAction<Bool>?
    
    init(_ titleKey: LocalizedStringKey,
         selection date: Binding<Date>,
         isOptional: Bool = false) {
        self.titleKey = titleKey
        self._date = date
        self.isOptional = isOptional
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                textField
                trailingView
            }
            .background(.primaryInputBackground)
            .foregroundColor(.primaryForeground)
            .onTapGesture {
                date = internalDate ?? .today
                withAnimation {
                    isExpanded.toggle()
                }
            }
            if isExpanded {
                datePicker
            }
        }
        .borderStyle(.stroke(.nano), borderColor: .borderColor, cornerStyle: .rounded(.medium))
        .animation(.easeInOut(duration: 0.2), value: isExpanded)
        .onChange(of: isExpanded) { _, newValue in
            onExpandChange?(newValue)
        }
    }
    
    @ViewBuilder
    var textField: some View {
        HStack {
            VStack {
                if let internalDate {
                    Text(internalDate, style: .date)
                } else {
                    Text(titleKey)
                    #if os(macOS)
                        .foregroundColor(Color(nsColor: .placeholderTextColor))
                    #else
                        .foregroundColor(Color(uiColor: .placeholderText))
                    #endif
                }
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
        Divider().background(.dividerColor)
        DatePicker(titleKey, selection: $date, displayedComponents: .date)
            .datePickerStyle(.graphical)
            .onChange(of: date) { newValue in
                internalDate = date
            }
            .background(.primaryInputBackground)
    }
}

#Preview {
    @State var date: Date = .today
    return VStack {
        BaseDateField("Date", selection: $date)
        BaseDateField("Date", selection: $date, isOptional: true)
    }
    .padding()
}
