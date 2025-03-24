//
//  TagColor.swift
//
//
//  Created by Oscar De Moya on 15/06/24.
//

import SwiftUI

public enum TagColor: String, Codable, DefaultProviding, CaseIterable, Identifiable {
    
    public static let defaultValue: Self = .indigo
    
    case blue
    case navy
    case indigo
    case violet
    case purple
    case wine
    case magenta
    case fuchsia
    case red
    case vermilion
    case orange
    case tangerine
    case gold
    case yellow
    case lemon
    case olive
    case apple
    case lime
    case green
    case emerald
    case teal
    case cyan
    case aqua
    case celeste
    case lavender
    case pink
    case peach
    case cream
    case mint
    case beige
    case brown
    case white
    case gray
    case charcoal
    case black

    public var colorProvider: ShadeColorProvider.Type {
        switch self {
        case .blue: BlueColor.self
        case .navy: NavyColor.self
        case .indigo: IndigoColor.self
        case .violet: VioletColor.self
        case .purple: PurpleColor.self
        case .wine: WineColor.self
        case .magenta: MagentaColor.self
        case .fuchsia: FuchsiaColor.self
        case .red: RedColor.self
        case .vermilion: VermilionColor.self
        case .pink: PinkColor.self
        case .orange: OrangeColor.self
        case .tangerine: TangerineColor.self
        case .gold: GoldColor.self
        case .yellow: YellowColor.self
        case .lemon: LemonColor.self
        case .lime: LimeColor.self
        case .olive: OliveColor.self
        case .apple: AppleColor.self
        case .green: GreenColor.self
        case .emerald: EmeraldColor.self
        case .teal: TealColor.self
        case .cyan: CyanColor.self
        case .aqua: AquaColor.self
        case .celeste: CelesteColor.self
        case .lavender: LavenderColor.self
        case .peach: PeachColor.self
        case .cream: CreamColor.self
        case .mint: MintColor.self
        case .beige: BeigeColor.self
        case .brown: BrownColor.self
        case .white: WhiteColor.self
        case .gray: GrayColor.self
        case .charcoal: CharcoalColor.self
        case .black: BlackColor.self
        }
    }
        
    public var id: Self { self }
    public static var allCasesAlternated: [Self] { Self.allCases.alternated }
}

public extension [TagColor] {
    var alternated: [TagColor] {
        let oddCases = self.enumerated().filter { $0.offset % 2 != 0 }.map { $0.element }
        let evenCases = self.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
        return oddCases + evenCases
    }
}

#Preview {
    List {
        ForEach(TagColorVariant.allCasesByColor) { colorVariant in
            TagView(tag: Tag(name: "Tag", colorVariant: colorVariant), size: .large)
                .listRowBackground(colorVariant.tintColor)
        }
    }
}
