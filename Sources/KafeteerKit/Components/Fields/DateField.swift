//
//  DateField.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct DateField: View {
    @State public var titleKey: LocalizedStringKey = ""
    @Binding public var date: Date
    @Binding public var isExpanded: Bool
    
    public init(_ titleKey: LocalizedStringKey, selection date: Binding<Date>, isExpanded: Binding<Bool>) {
        self.titleKey = titleKey
        self._date = date
        self._isExpanded = isExpanded
    }
    
    public var body: some View {
        BaseDateField(titleKey, selection: $date, isExpanded: $isExpanded)
    }
}

#Preview {
    @State var date: Date = .today
    @State var isExpanded: Bool = false
    return DateField("Date", selection: $date, isExpanded: $isExpanded)
}
