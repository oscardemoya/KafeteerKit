//
//  CategoryPicker.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 21/05/24.
//

import SwiftUI

public struct CategoryPicker: View {
    @Environment(\.dismiss) private var dismiss
    @Binding public var selectedCategory: PaymentCategory
    @State private var searchText = ""
    @State private var selectedItem: PaymentCategory.Kind?
    @State private var categories = PaymentCategory.Kind.allCases
    @State private var groupedItems = [LifeArea: [PaymentCategory.Kind]]()
    
    public init(selectedCategory: Binding<PaymentCategory>) {
        self._selectedCategory = selectedCategory
    }
    
    public var body: some View {
        NavigationView {
            VStack {
                CategoryFilterBar(items: categories, selectedItem: $selectedItem)
                ScrollView {
                    ForEach(filteredAreas) { area in
                        if let list = groupedItems[area] {
                            CategoryPickerSection(
                                selectedCategory: $selectedCategory,
                                searchText: searchText,
                                area: area,
                                list: list
                            )
                            .onChange(of: selectedCategory) {
                                dismiss()
                            }
                        }
                    }
                }
            }
            .closable()
            .navigationTitle("Select Category")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.primaryBackground, for: .navigationBar)
            .scrollContentBackground(.hidden)
            .background(.secondaryBackground)
        }
        .searchable(text: $searchText)
        .onAppear {
            reloadData()
        }
        .onChange(of: searchText) { _, newValue in
            reloadData()
        }
        .onChange(of: selectedItem) { _, newValue in
            reloadData()
        }
        .onChange(of: matchingResults) { _, newValue in
            categories = PaymentCategory.Kind.allCases.filter { kind in
                matchingResults.contains { $0.categoryClass == kind.categoryClass }
            }
        }
    }
    
    func reloadData() {
        groupedItems = Dictionary(grouping: filteredResults) { $0.categoryClass.lifeArea }
    }
    
    private var matchingResults: [PaymentCategory.Kind] {
        PaymentCategory.Kind.allCases.filter { kind in
            kind.categories.contains { category in
                if category.name.fuzzyMatch(searchText) { return true }
                return category.keywords.contains { $0.fuzzyMatch(searchText) }
            }
        }
    }
    
    private var filteredResults: [PaymentCategory.Kind] {
        if let selectedItem {
            return matchingResults.filter { $0.categoryClass == selectedItem.categoryClass }
        }
        return matchingResults
    }
    
    private var filteredAreas: [LifeArea] { groupedItems.keys.sorted(by: { $0.index < $1.index }) }
}

extension PaymentCategory.Kind {
    func filteredCategories(by text: String) -> [PaymentCategory] {
        categories.filter { category in
            if category.name.fuzzyMatch(text) { return true }
            return category.keywords.contains { $0.fuzzyMatch(text) }
        }
    }
}

#Preview {
    CategoryPicker(selectedCategory: .constant(PaymentCategory.default))
}
