//
//  CircularCloseButton.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct CircularButton: View {
    public enum Icon {
        case close
        case search
        case edit
        case replace
        case delete
        case info
        case system(name: String)
        
        var systemName: String {
            switch self {
            case .close: return "xmark.circle.fill"
            case .search: return "magnifyingglass.circle.fill"
            case .edit: return "pencil.circle.fill"
            case .replace: return "arrow.trianglehead.2.clockwise.rotate.90.circle.fill"
            case .delete: return "trash.circle.fill"
            case .info: return "info.circle.fill"
            case .system(let name): return name
            }
        }
    }
    
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
            case .compact: return 12
            case .regular: return 12
            case .large: return 12
            }
        }
        
        var verticalPadding: CGFloat {
            switch self {
            case .compact: return 12
            case .regular: return 12
            case .large: return 12
            }
        }
    }

    public init(
        size: Size = .regular,
        icon: Icon = .close,
        foregroundColor: Color = .tertiaryForeground,
        action: @escaping Action
    ) {
        self.size = size
        self.icon = icon
        self.foregroundColor = foregroundColor
        self.action = action
    }
    
    public var size: Size = .regular
    public var icon: Icon = .close
    public var foregroundColor: Color = .tertiaryForeground
    public var action: Action

    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: icon.systemName)
                .font(.system(size: size.fontSize))
                .symbolRenderingMode(.hierarchical)
                .padding(.horizontal, size.horizontalPadding)
                .padding(.vertical, size.verticalPadding)
        }
        .foregroundColor(foregroundColor)
    }
}

#Preview {
    CircularButton {}
    CircularButton(icon: .search) {}
    CircularButton(icon: .edit) {}
    CircularButton(icon: .replace) {}
    CircularButton(icon: .delete) {}
    CircularButton(icon: .info) {}
}
