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
    
    public init(selectedCategory: Binding<PaymentCategory>) {
        self._selectedCategory = selectedCategory
    }
    
    public var body: some View {
        NavigationView {
            ScrollView {
                ForEach(filteredAreas) { area in
                    if let list = filteredResults[area] {
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
            .closable()
            .navigationTitle("Select Category")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.primaryBackground, for: .navigationBar)
            .scrollContentBackground(.hidden)
            .background(.secondaryBackground)
        }
        .searchable(text: $searchText)
        .onAppear {
            self.selectedCategory = selectedCategory // Force update the grid to avoid default to be selected
        }
    }
    
    private var filteredResults: [LifeArea: [PaymentCategory.Kind]] {
        let results = PaymentCategory.Kind.allCases.filter { kind in
            kind.categories.contains { category in
                if category.name.fuzzyMatch(searchText) { return true }
                return category.keywords.contains { $0.fuzzyMatch(searchText) }
            }
        }
        return Dictionary(grouping: results) { $0.categoryClass.lifeArea }
    }
    
    private var filteredAreas: [LifeArea] { filteredResults.keys.sorted(by: { $0.index < $1.index }) }
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
