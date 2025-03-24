//
//  OverlayView.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/24/25.
//

import SwiftUI

public struct OverlayView: View {
    public var backgroundColor: Color = .shadowColor

    public var body: some View {
        VStack {
            EmptyView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor.edgesIgnoringSafeArea(.all))
        .blendMode(.normal)
    }
}
