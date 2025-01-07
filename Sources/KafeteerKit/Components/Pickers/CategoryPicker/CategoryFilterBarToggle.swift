//
//  CategoryFilterBarToggle.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 1/1/25.
//

import SwiftUI

struct CategoryFilterBarToggle: View {
    var item: PaymentCategory.Kind
    @Binding var selectedItem: PaymentCategory.Kind?
    
    var body: some View {
        Group {
            if isSelected {
                itemView
                    .foregroundColor(.primaryAccentForeground)
                    .background(.primaryAccent)
            } else {
                itemView
                    .foregroundColor(.tertiaryForeground)
                    .background(.primaryBackground)
            }
        }
        .cornerStyle(.rounded(.extraSmall))
        .contentShape(.rect)
        .onTapGesture {
            withAnimation {
                selectedItem = selectedItem != item ? item : nil
            }
        }
    }
    
    @ViewBuilder var itemView: some View {
        HStack(spacing: .quark) {
            item.icon
            Text(item.categoryName)
        }
        .font(.systemDefault(.body))
        .fontWeight(.medium)
        .fontWeight(.regular)
        .padding(.vertical, .extraSmall)
        .padding(.horizontal, .small)
    }
    
    var isSelected: Bool {
        guard let selectedItem else { return false }
        return item == selectedItem
    }
}

#Preview {
    @Previewable @State var selectedItem: PaymentCategory.Kind? = nil
    CategoryFilterBarToggle(item: .general, selectedItem: $selectedItem)
}
