//
//  DateView.swift
//
//
//  Created by Oscar De Moya on 21/05/24.
//

import SwiftUI

public struct DateView: View {
    public enum Size {
        case compact
        case regular
        case large
        
        public var titleTextStyle: Font.TextStyle {
            switch self {
            case .compact: .body
            case .regular: .title3
            case .large: .title
            }
        }
        
        public var subtitleTextStyle: Font.TextStyle {
            switch self {
            case .compact: .caption2
            case .regular: .subheadline
            case .large: .headline
            }
        }
    }
    
    public var date: Date
    public var showDay: Bool = true
    public var size: Size = .regular
    
    public init(date: Date, showDay: Bool = true, size: Size = .regular) {
        self.date = date
        self.showDay = showDay
        self.size = size
    }
    
    public var body: some View {
        HStack(spacing: .nano) {
            if showDay {
                dayView
                Divider().overlay(.dividerColor)
            }
            monthView
        }
        .fixedSize()
    }
    
    @ViewBuilder
    public var dayView: some View {
        VStack(spacing: .zero) {
            Text(date.formatted(.dateTime.weekday()).uppercased())
                .frame(maxWidth: .infinity)
                .font(.systemDefault(size.subtitleTextStyle))
                .fontWeight(.regular)
            Text(date.formatted(.dateTime.day()))
                .frame(maxWidth: .infinity)
                .font(.systemDefault(size.titleTextStyle))
                .fontWeight(.bold)
        }
        .foregroundColor(.dangerColor)
    }
    
    @ViewBuilder
    public var monthView: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text(date.formatted(.dateTime.year()))
                .font(.systemDefault(size.subtitleTextStyle))
                .fontWeight(.regular)
            Text(date.formatted(.dateTime.month(.wide)))
                .font(.systemDefault(size.titleTextStyle))
                .fontWeight(.bold)
        }
        .foregroundColor(.tertiaryForeground)
    }
    
}

#Preview {
    VStack {
        DateView(date: .today, size: .compact)
        DateView(date: .today, size: .regular)
        DateView(date: .today, size: .large)
    }
}
