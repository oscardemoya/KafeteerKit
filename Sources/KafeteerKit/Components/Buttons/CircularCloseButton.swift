//
//  CircularCloseButton.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct CircularCloseButton: View {
    public enum Size {
        case compact
        case regular
        case large
        
        var isCompact: Bool { self == .compact }
        var isRegular: Bool { self == .regular }
        var isLarge: Bool { self == .large }
        
        var fontSize: CGFloat {
            switch self {
            case .compact: return 16
            case .regular: return 20
            case .large: return 32
            }
        }
        
        var horizontalPadding: CGFloat {
            switch self {
            case .compact: return 8
            case .regular: return 12
            case .large: return 12
            }
        }
        
        var verticalPadding: CGFloat {
            switch self {
            case .compact: return 0
            case .regular: return 12
            case .large: return 12
            }
        }
    }

    public init(size: Size = .regular, action: @escaping Action) {
        self.size = size
        self.action = action
    }
    
    public var size: Size = .regular
    public var action: Action

    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "xmark.circle.fill")
                .font(.system(size: size.fontSize))
                .symbolRenderingMode(.hierarchical)
                .padding(.horizontal, size.horizontalPadding)
                .padding(.vertical, size.verticalPadding)
        }
        .foregroundColor(.tertiaryForeground)
    }
}

#Preview {
    CircularCloseButton {}
}
