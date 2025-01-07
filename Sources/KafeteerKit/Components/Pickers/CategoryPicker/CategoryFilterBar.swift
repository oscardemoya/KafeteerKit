//
//  CategoryFilterBar.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/1/25.
//

import SwiftUI

struct CategoryFilterBar: View {
    var items: [PaymentCategory.Kind]
    @Binding var selectedItem: PaymentCategory.Kind?
    
    var body: some View {
        ScrollViewReader { proxy in
            HStack(spacing: .zero) {
                ZStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: Spacing.extraSmall.value) {
                            ForEach(items) { item in
                                CategoryFilterBarToggle(item: item, selectedItem: $selectedItem)
                                    .id(item.id)
                            }
                        }
                    }
                    .safeAreaPadding(.horizontal, Spacing.small.value)
                    .safeAreaPadding(.vertical, Spacing.quark.value)
                    .onChange(of: selectedItem) { _, selectedItem in
                        withAnimation {
                            if let selectedItem {
                                proxy.scrollTo(selectedItem.id, anchor: .center)
                            } else if let firstItem = items.first {
                                proxy.scrollTo(firstItem.id, anchor: .leading)
                            }
                        }
                    }
                    HStack(spacing: .zero) {
                        Spacer()
                        LinearGradient(colors: [.clear, .secondaryBackground], startPoint: .leading, endPoint: .trailing)
                            .frame(width: Spacing.small.value)
                    }
                }
                if selectedItem != nil {
                    HStack {
                        CircularCloseButton(size: .regular) {
                            withAnimation {
                                selectedItem = nil
                            }
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .fixedSize(horizontal: false, vertical: true)
        .background(.secondaryBackground)
    }
}

#Preview {
    @Previewable @State var selectedItem: PaymentCategory.Kind? = .general
    CategoryFilterBar(items: PaymentCategory.Kind.allCases, selectedItem: $selectedItem)
}
