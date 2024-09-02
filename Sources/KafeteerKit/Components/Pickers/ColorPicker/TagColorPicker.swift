//
//  TagColorPicker.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 21/07/24.
//

import SwiftUI

public struct TagColorPicker: View {
    var titleKey: LocalizedStringKey
    var hierarchy: Hierarchy = .primary
    @Binding var selection: TagColorVariant
    @State private var isExpanded: Bool = false
    private static var size: CGFloat = 44
    private static var spacing: CGFloat = Spacing.nano.rawValue
    
    let columns = Array(repeating: GridItem(.fixed(Self.size), spacing: Self.spacing),
                        count: 6)
    
    public init(
        _ titleKey: LocalizedStringKey,
        hierarchy: Hierarchy = .primary,
        selection: Binding<TagColorVariant>
    ) {
        self.titleKey = titleKey
        self.hierarchy = hierarchy
        self._selection = selection
    }
    
    public var body: some View {
        DisclosureGroup(isExpanded: $isExpanded) {
            LazyVGrid(columns: columns, spacing: Self.spacing) {
                ForEach(TagColorVariant.allCasesByColor) { colorVariant in
                    iconView(for: colorVariant)
                }
            }
            .padding(.medium)
        } label: {
            Text(titleKey)
                .tagStyle(selection)
        }
        .padding(.horizontal, .medium)
        .padding(.vertical, .small)
        .background(hierarchy.inputBackgroundColor)
        .foregroundStyle(hierarchy.inputForegroundColor)
        .borderStyle(.stroke(.regular), borderColor: .borderColor, cornerStyle: .rounded(.medium))
        .animation(.easeInOut(duration: 0.1), value: !isExpanded)
    }
    
    @ViewBuilder
    func iconView(for colorVariant: TagColorVariant) -> some View {
        let isSelected = (colorVariant == selection)
        Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
            .font(.system(size: isSelected ? 24 : 20, weight: .regular))
            .fontWeight(.bold)
            .frame(width: Self.size, height: Self.size)
            .foregroundColor(isSelected ? colorVariant.backgroundColor : colorVariant.foregroundColor)
            .background(isSelected ? colorVariant.foregroundColor : colorVariant.backgroundColor)
            .clipShape(.circle)
            .contentShape(.circle)
            .onTapGesture {
                withAnimation {
                    selection = colorVariant
                }
            }
    }
}

#Preview {
    @State var selection: TagColorVariant = .default
    return TagColorPicker("Color", selection: $selection)
}
