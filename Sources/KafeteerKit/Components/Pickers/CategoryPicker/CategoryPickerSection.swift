//
//  CategoryPickerSection.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 30/05/24.
//

import SwiftUI

struct CategoryPickerSection: View {
    @Binding var selectedCategory: PaymentCategory
    var area: LifeArea
    var searchText: String
    var list: [PaymentCategory.Kind]
    @State private var isExpanded: Bool = true
    private var columns = [GridItem(.adaptive(minimum: 60), spacing: 12)]
    private var hierarchy: Hierarchy = .primary
    
    init(selectedCategory: Binding<PaymentCategory>, searchText: String, area: LifeArea, list: [PaymentCategory.Kind]) {
        self._selectedCategory = selectedCategory
        self.searchText = searchText
        self.area = area
        self.list = list
    }
    
    var body: some View {
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(list) { kind in
                Section(header: header(title: kind.categoryName)) {
                    LazyVGrid(columns: columns, spacing: 12) {
                        ForEach(kind.filteredCategories(by: searchText)) { category in
                            gridItem(for: category)
                        }
                    }
                }
            }
        } label: {
            Text(area.name)
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .animation(.easeInOut(duration: 0.1), value: !isExpanded)
        .padding(.medium)
    }
    
    @ViewBuilder
    func header(title: String) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.systemDefault(.headline))
                .fontWeight(.semibold)
                .foregroundColor(.primaryForeground)
                .frame(maxWidth: .infinity, alignment: .leading)
            Divider().background(.dividerColor)
        }
    }
    
    @ViewBuilder
    func gridItem(for category: PaymentCategory) -> some View {
        HStack(alignment: .top) {
            VStack {
                category.icon
                    .font(.system(size: 28))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(.extraSmall)
                    .foregroundColor(foregroundColor(selected: category == selectedCategory))
                    .background(backgroundColor(selected: category == selectedCategory))
                    .cornerStyle(.rounded(.medium))
                    .overlay {
                        Button {
                            selectedCategory = category
                        } label: {
                            Color.clear
                        }
                    }
                Text(category.name)
                    .multilineTextAlignment(.center)
                    .font(.systemDefault(.caption))
                    .foregroundColor(.secondaryForeground)
                    .lineLimit(2, reservesSpace: true)
                Spacer()
            }
        }
    }
    
    func backgroundColor(selected: Bool) -> Color {
        selected ? hierarchy.brandColor : hierarchy.tintColor.opacity(0.4)
    }
    
    func foregroundColor(selected: Bool) -> Color {
        selected ? .lightOverlay : hierarchy.brandColor
    }
}

//#Preview {
//    CategoryPickerSection()
//}
