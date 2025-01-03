//
//  CategoryFilterBar.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/1/25.
//

import SwiftUI

struct CategoryFilterBar: View {
    @Binding var selectedItem: PaymentCategory.Kind?
    
    var items = PaymentCategory.Kind.allCases

    var body: some View {
        ScrollViewReader { proxy in
            HStack(spacing: .zero) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: Spacing.extraSmall.value) {
                        ForEach(items) { item in
                            CategoryFilterBarToggle(item: item, selectedItem: $selectedItem)
                                .id(item.id)
                        }
                    }
                }
                .safeAreaPadding(.horizontal, Spacing.nano.value)
                .safeAreaPadding(.vertical, Spacing.quark.value)
                .background(.primaryInputBackground)
                .cornerStyle(.rounded(.extraSmall))
                .onChange(of: selectedItem) { _, newValue in
                    withAnimation {
                        proxy.scrollTo(newValue, anchor: .center)
                    }
                }
                if selectedItem != nil {
                    CircularCloseButton(size: .regular) {
                        withAnimation {
                            selectedItem = nil
                        }
                    }
                }
            }
        }
        .padding(.vertical, .nano)
        .padding(selectedItem != nil ? .leading: .horizontal, .small)
        .frame(maxWidth: .infinity)
        .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    @Previewable @State var selectedItem: PaymentCategory.Kind? = .general
    CategoryFilterBar(selectedItem: $selectedItem)
}
