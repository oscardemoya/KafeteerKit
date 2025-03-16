//
//  CalendarIconView.swift
//
//
//  Created by Oscar De Moya on 21/05/24.
//

import SwiftUI

public struct CalendarIconView: View {
    public enum Size {
        case small
        case regular
        case large
    }
    
    public var date: Date
    public var size: Size = .regular
    
    public init(date: Date, size: Size = .regular) {
        self.date = date
        self.size = size
    }
    
    public var body: some View {
        VStack {
            switch size {
            case .small: smallView
            case .regular: normalView
            case .large: largeView
            }
        }
        .fixedSize(horizontal: true, vertical: false)
    }
    
    let backgroundColor: Color = Color(.bright300)
    let numberColor: Color = Color(.dark300)
    let headerColor: Color = Color(.dangerColor)
    
    @ViewBuilder
    public var smallView: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 6)
                .frame(maxWidth: .infinity)
                .foregroundColor(headerColor)
            Text("\(date.day)")
                .frame(maxWidth: .infinity)
                .font(.systemDefault(.footnote))
                .padding(.vertical, 1)
                .padding(.horizontal, 2)
                .foregroundColor(numberColor)
                .background(backgroundColor)
        }
        .frame(minWidth: 24)
        .borderStyle(.stroke(.nano), borderColor: .borderColor, cornerStyle: .rounded(.nano))
    }
    
    @ViewBuilder
    public var normalView: some View {
        VStack(spacing: 0) {
            Text(date.shortMonthString.uppercased().replacingOccurrences(of: ".", with: ""))
                .frame(maxWidth: .infinity)
                .font(.systemDefault(.caption2))
                .fontWeight(.bold)
                .padding(.vertical, 1)
                .padding(.horizontal, 6)
                .foregroundColor(backgroundColor)
                .background(headerColor)
            Text("\(date.day)")
                .frame(maxWidth: .infinity)
                .font(.systemDefault(.title3))
                .padding(.vertical, 1)
                .padding(.horizontal, 6)
                .foregroundColor(numberColor)
                .background(backgroundColor)
        }
        .frame(minWidth: 40)
        .borderStyle(.stroke(.nano), borderColor: .borderColor, cornerStyle: .rounded(.extraSmall))
    }
    
    @ViewBuilder
    public var largeView: some View {
        VStack(spacing: 0) {
            Text(date.shortMonthString.uppercased().replacingOccurrences(of: ".", with: ""))
                .frame(maxWidth: .infinity)
                .font(.systemDefault(.body))
                .fontWeight(.bold)
                .padding(.vertical, 2)
                .padding(.horizontal, 10)
                .foregroundColor(backgroundColor)
                .background(headerColor)
            Text("\(date.day)")
                .frame(maxWidth: .infinity)
                .font(.systemDefault(.title))
                .fontWeight(.bold)
                .padding(.vertical, 4)
                .padding(.horizontal, 10)
                .foregroundColor(numberColor)
                .background(backgroundColor)
        }
        .frame(minWidth: 64)
        .borderStyle(.stroke(.nano), borderColor: .borderColor, cornerStyle: .rounded(.small))
    }
    
    
}

#Preview {
    VStack {
        CalendarIconView(date: .today, size: .small)
        CalendarIconView(date: .today, size: .regular)
        CalendarIconView(date: .today, size: .large)
    }
}
