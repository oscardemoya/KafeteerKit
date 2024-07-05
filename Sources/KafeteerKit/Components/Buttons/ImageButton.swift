//
//  ImageButton.swift
//
//
//  Created by Oscar De Moya on 21/05/24.
//

import SwiftUI

public struct ImageButton: View {
    public enum Size {
        case compact
        case regular
        case large
        
        var fontSize: CGFloat {
            switch self {
            case .compact: return 16
            case .regular: return 20
            case .large: return 30
            }
        }
        
        var minWidth: CGFloat {
            switch self {
            case .compact: return 24
            case .regular: return 32
            case .large: return 48
            }
        }
        
        var maxHeight: CGFloat {
            switch self {
            case .compact: return 16
            case .regular: return 24
            case .large: return 32
            }
        }
        
        var horizontalPadding: CGFloat {
            switch self {
            case .compact: return 0
            case .regular: return 2
            case .large: return 4
            }
        }
        
        var verticalPadding: CGFloat {
            switch self {
            case .compact: return 6
            case .regular: return 8
            case .large: return 12
            }
        }
        
        var cornerRadius: CornerRadius {
            switch self {
            case .compact: return .small
            case .regular: return .medium
            case .large: return .medium
            }
        }
    }
    
    var image: Image?
    @State var color: Color = .primaryAccent
    var size: Size = .regular
    var action: Action

    public init(
        image: Image? = nil,
        color: Color = .primaryAccent,
        size: Size = .regular,
        action: @escaping Action
    ) {
        self.image = image
        self.color = color
        self.size = size
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            VStack {
                image?
                    .font(.system(size: size.fontSize, weight: .regular))
                    .frame(minWidth: size.minWidth, maxHeight: size.maxHeight)
                    .padding(.horizontal, size.horizontalPadding)
                    .padding(.vertical, size.verticalPadding)
            }
        }
        .tint(color)
        .cornerStyle(.rounded(size.cornerRadius))
    }
}

#Preview {
    ImageButton(image: Image(systemName: "star")) {}
}
