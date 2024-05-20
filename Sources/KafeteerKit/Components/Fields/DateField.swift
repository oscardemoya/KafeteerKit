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
    
    public init(_ titleKey: LocalizedStringKey, selection date: Binding<Date>) {
        self.titleKey = titleKey
        self._date = date
    }
    
    public var body: some View {
        BaseDateField(titleKey, selection: $date)
    }
}

#Preview {
    @State var date: Date = .today
    return DateField("Date", selection: $date)
}
