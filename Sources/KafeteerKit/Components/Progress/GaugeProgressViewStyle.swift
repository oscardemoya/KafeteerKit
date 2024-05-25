//
//  GaugeProgressViewStyle.swift
//
//
//  Created by Oscar De Moya on 24/05/24.
//

import SwiftUI

public struct GaugeProgressViewStyle: ProgressViewStyle {
    var strokeColor = Color.blue
    var strokeWidth = 25.0

    public func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            Circle()
                .trim(from: 0, to: fractionCompleted)
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
    }
}

public extension ProgressViewStyle where Self == GaugeProgressViewStyle {
    static var gauge: GaugeProgressViewStyle { .init() }
}
