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
    @State private var internalDate: Date = .today
    
    public init(_ titleKey: LocalizedStringKey, selection date: Binding<OptionalDate>) {
        self.titleKey = titleKey
        self._date = date
    }
    
    public var body: some View {
        BaseDateField(titleKey, selection: $internalDate, isOptional: true)
    }
}

#Preview {
    @State var date: OptionalDate = .none
    return OptionalDateField("Date", selection: $date)
}
