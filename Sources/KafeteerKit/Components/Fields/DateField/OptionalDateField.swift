//
//  File.swift
//  
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct OptionalDateField: View {
    @State public var titleKey: LocalizedStringKey = ""
    @Binding public var date: OptionalDate
    var displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date]
    @Binding public var isExpanded: Bool
    @State private var internalDate: Date = .now
    
    public init(_ titleKey: LocalizedStringKey,
                selection date: Binding<OptionalDate>,
                displayedComponents: DatePicker.Components = [.hourAndMinute, .date],
                isExpanded: Binding<Bool>) {
        self.titleKey = titleKey
        self._date = date
        self.displayedComponents = displayedComponents
        self._isExpanded = isExpanded
    }
    
    public var body: some View {
        BaseDateField(titleKey, selection: $internalDate, isOptional: true, isExpanded: $isExpanded)
    }
}

#Preview {
    @State var date: OptionalDate = .none
    @State var isExpanded: Bool = false
    return OptionalDateField("Date", selection: $date, isExpanded: $isExpanded)
}
