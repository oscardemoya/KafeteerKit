//
//  LoadingView.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/16/25.
//

import SwiftUI

public struct LoadingView: View {
    public var body: some View {
        ZStack {
            Color.primaryForeground.opacity(0.5)
                .frame(width: 80, height: 80)
                .cornerStyle(.rounded(.medium))
                .overlay(
                    ProgressView()
                        .progressViewStyle(.circular)
                        .tint(.primaryBackground)
                        .scaleEffect(2)
                )
        }
    }
}

#Preview {
    LoadingView()
}
