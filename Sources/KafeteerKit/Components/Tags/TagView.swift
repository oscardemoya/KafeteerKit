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
                        .foregroundColor(tag.color.backgroundColor)
                case .regular:
                    Text(tag.name.uppercased())
                        .font(.systemDefault(.caption2))
                        .fontWeight(.regular)
                        .padding(.vertical, 2)
                        .padding(.horizontal, 6)
                        .foregroundColor(tag.color.foregroundColor)
                        .background(tag.color.backgroundColor)
                        .clipShape(.capsule)
                case .large:
                    Text(tag.name.uppercased())
                        .font(.systemDefault(.body))
                        .fontWeight(.regular)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .foregroundColor(tag.color.foregroundColor)
                        .background(tag.color.backgroundColor)
                        .clipShape(.capsule)
                }
            }
            .fixedSize()
        }
    }
}

#Preview {
    List {
        ForEach(TagColor.allCases) { tagColor in
            TagView(tag: Tag(name: "Tag", colorName: tagColor.rawValue), size: .large)
                .previewLayout(.sizeThatFits)
        }
    }
}
