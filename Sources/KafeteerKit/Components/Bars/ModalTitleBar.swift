//
//  ModalTitleBar.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct ModalTitleBar: View {
    @Environment(\.dismiss) private var dismiss
    var titleKey: LocalizedStringKey
    var showCloseButton: Bool = false
    @State private var closeButtonWidth: CGFloat = .zero
    
    public init(_ titleKey: LocalizedStringKey, showCloseButton: Bool = false) {
        self.titleKey = titleKey
        self.showCloseButton = showCloseButton
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            HStack(alignment: .center) {
                if showCloseButton {
                    Spacer().frame(width: closeButtonWidth)
                }
                Text(titleKey)
                    .font(.systemDefault(.title3))
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
                    .padding(.small)
                if showCloseButton {
                    CircularCloseButton(size: .large) {
                        dismiss()
                    }
                    .onSizeChange { size in
                        closeButtonWidth = size.width
                    }
                }
            }
            Divider().background(.dividerColor)
        }
    }
}

#Preview {
    ModalTitleBar("Title")
}
