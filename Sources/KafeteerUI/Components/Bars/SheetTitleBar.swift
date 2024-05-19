//
//  SheetTitleBar.swift
//
//
//  Created by Oscar De Moya on 18/05/24.
//

import SwiftUI

public struct SheetTitleBar: View {
    @Environment(\.dismiss) private var dismiss
    var titleKey: LocalizedStringKey
    @State private var closeButtonWidth: CGFloat = .zero
    
    public init(_ titleKey: LocalizedStringKey) {
        self.titleKey = titleKey
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            HStack(alignment: .center) {
                Spacer().frame(width: closeButtonWidth)
                Text(titleKey)
                    .font(.title3)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
                CircularCloseButton(size: .large) {
                    dismiss()
                }
                .onSizeChange { size in
                    closeButtonWidth = size.width
                }
            }
            Divider().background(.dividerColor)
        }
    }
}

#Preview {
    SheetTitleBar("Title")
}
