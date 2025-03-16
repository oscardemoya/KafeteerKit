//
//  FavIconView.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 3/15/25.
//

import SwiftUI

public struct FavIconView: View {
    public var url: URL?
    
    public init(url: URL? = nil) {
        self.url = url
    }
    
    // Computed
    public var favicon: FavIcon? {
        guard let url else { return nil }
        return FavIcon(url, size: .xLarge)
    }
    
    public var body: some View {
        if let favicon {
            AsyncImage(url: favicon.url) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.primaryInputBackground
            }
            .frame(width: 40, height: 40)
            .cornerStyle(.rounded(.extraSmall))
        }
    }
}

#Preview {
    FavIconView(url: URL(string: "https://amazon.com"))
}
