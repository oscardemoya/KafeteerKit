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
    public var order: LifeArea.Order = .index
    
    @State private var searchText = ""
    @State private var selectedItem: PaymentCategory.Kind?
    @State private var categories = PaymentCategory.Kind.allCases
    @State private var groupedItems = [LifeArea: [PaymentCategory.Kind]]()
    
    public init(selectedCategory: Binding<PaymentCategory>, order: LifeArea.Order = .index) {
        self._selectedCategory = selectedCategory
        self.order = order
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
    }
    
    func reloadData() {
        groupedItems = Dictionary(grouping: filteredResults) { $0.categoryClass.lifeArea }
        categories = sortedCategories
            .filter { kind in
                matchingResults.contains { $0.categoryClass == kind.categoryClass }
            }
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
    
    private var sortedCategories: [PaymentCategory.Kind] {
        PaymentCategory.Kind.allCases.sorted {
            switch order {
            case .index:
                return $0.categoryClass.lifeArea.index < $1.categoryClass.lifeArea.index
            case .financeFirst:
                if $0.categoryClass.lifeArea == $1.categoryClass.lifeArea {
                    return $0.categoryClass.lifeArea.index < $1.categoryClass.lifeArea.index
                }
                return $0.categoryClass.lifeArea == .finance
            }
        }
    }
    
    private var filteredAreas: [LifeArea] {
        groupedItems.keys.sorted {
            switch order {
            case .index:
                return $0.index < $1.index
            case .financeFirst:
                if $0 != .finance, $1 != .finance {
                    return $0.index < $1.index
                }
                return $0 == .finance
            }
        }
    }
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
    CategoryPicker(selectedCategory: .constant(PaymentCategory.defaultValue))
}
