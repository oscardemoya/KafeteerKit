//
//  TagView.swift
//
//
//  Created by Oscar De Moya on 15/06/24.
//

import SwiftUI

public struct TagView: View {
    public enum Size {
        case compact
        case regular
        case large
    }
    
    public var tag: Tag
    public var size: Size = .regular
    
    public init(tag: Tag, size: Size = .regular) {
        self.tag = tag
        self.size = size
    }
    
    public var body: some View {
        ZStack {
            HStack {
                switch size {
                case .compact:
                    Capsule()
                        .frame(width: 12, height: 4)
                        .foregroundColor(tag.colorVariant.backgroundColor)
                case .regular:
                    Text(tag.name.uppercased())
                        .font(.systemDefault(.caption2))
                        .fontWeight(.regular)
                        .padding(.vertical, 2)
                        .padding(.horizontal, 6)
                        .foregroundColor(tag.colorVariant.foregroundColor)
                        .background(tag.colorVariant.backgroundColor)
                        .clipShape(.capsule)
                case .large:
                    Text(tag.name.uppercased())
                        .font(.systemDefault(.body))
                        .fontWeight(.regular)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .foregroundColor(tag.colorVariant.foregroundColor)
                        .background(tag.colorVariant.backgroundColor)
                        .clipShape(.capsule)
                }
            }
            .fixedSize()
        }
    }
}

#Preview {
    List {
        ForEach(TagColorVariant.allCases) { colorVariant in
            TagView(tag: Tag(name: "Tag", colorVariant: colorVariant), size: .large)
                .previewLayout(.sizeThatFits)
        }
    }
}
