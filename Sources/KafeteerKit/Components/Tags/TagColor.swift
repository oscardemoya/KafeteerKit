//
//  TagColor.swift
//
//
//  Created by Oscar De Moya on 15/06/24.
//

import SwiftUI

public enum TagColor: String, CaseIterable, Identifiable {
    
    public enum Variant: String, CaseIterable, Identifiable {
        case light
        case base
        case dark
        
        public var id: Self { self }
    }
    
    public static let `default`: Self = .teal
    
    case teal
    case blue
    case indigo
    case purple
    case pink
    case red
    case orange
    case brown
    case yellow
    case lime
    case green
    case mint
    case gray
    case darkTeal
    case darkBlue
    case darkIndigo
    case darkPurple
    case darkPink
    case darkRed
    case darkOrange
    case darkBrown
    case darkYellow
    case darkLime
    case darkGreen
    case darkMint
    case darkGray
    case lightTeal
    case lightBlue
    case lightIndigo
    case lightPurple
    case lightPink
    case lightRed
    case lightOrange
    case lightBrown
    case lightYellow
    case lightLime
    case lightGreen
    case lightMint
    case lightGray

    public var id: Self { self }
    
    public var backgroundColor: Color {
        switch self {
        case .lightBlue: Color(.blue400)
        case .lightIndigo: Color(.indigo400)
        case .lightPurple: Color(.purple400)
        case .lightPink: Color(.pink400)
        case .lightRed: Color(.red400)
        case .lightOrange: Color(.orange400)
        case .lightBrown: Color(.brown400)
        case .lightYellow: Color(.yellow400)
        case .lightLime: Color(.lime400)
        case .lightGreen: Color(.green400)
        case .lightTeal: Color(.teal400)
        case .lightMint: Color(.mint400)
        case .lightGray: Color(.gray400)
        case .blue: Color(.blue600)
        case .indigo: Color(.indigo600)
        case .purple: Color(.purple600)
        case .pink: Color(.pink600)
        case .red: Color(.red600)
        case .orange: Color(.orange600)
        case .brown: Color(.brown600)
        case .yellow: Color(.yellow600)
        case .lime: Color(.lime600)
        case .green: Color(.green600)
        case .teal: Color(.teal600)
        case .mint: Color(.mint600)
        case .gray: Color(.gray600)
        case .darkBlue: Color(.blue800)
        case .darkIndigo: Color(.indigo800)
        case .darkPurple: Color(.purple800)
        case .darkPink: Color(.pink800)
        case .darkRed: Color(.red800)
        case .darkOrange: Color(.orange800)
        case .darkBrown: Color(.brown800)
        case .darkYellow: Color(.yellow800)
        case .darkLime: Color(.lime800)
        case .darkGreen: Color(.green800)
        case .darkTeal: Color(.teal800)
        case .darkMint: Color(.mint800)
        case .darkGray: Color(.gray800)
        }
    }
    
    public var foregroundColor: Color {
        switch self {
        case .lightBlue: Color(.blue200)
        case .lightIndigo: Color(.indigo200)
        case .lightPurple: Color(.purple200)
        case .lightPink: Color(.pink200)
        case .lightRed: Color(.red200)
        case .lightOrange: Color(.orange200)
        case .lightBrown: Color(.brown200)
        case .lightYellow: Color(.yellow200)
        case .lightLime: Color(.lime200)
        case .lightGreen: Color(.green200)
        case .lightTeal: Color(.teal200)
        case .lightMint: Color(.mint200)
        case .lightGray: Color(.gray200)
        case .blue: Color(.blue100)
        case .indigo: Color(.indigo100)
        case .purple: Color(.purple100)
        case .pink: Color(.pink100)
        case .red: Color(.red100)
        case .orange: Color(.orange100)
        case .brown: Color(.brown100)
        case .yellow: Color(.yellow100)
        case .lime: Color(.lime100)
        case .green: Color(.green100)
        case .teal: Color(.teal100)
        case .mint: Color(.mint100)
        case .gray: Color(.gray100)
        case .darkBlue: Color(.blue050)
        case .darkIndigo: Color(.indigo050)
        case .darkPurple: Color(.purple050)
        case .darkPink: Color(.pink050)
        case .darkRed: Color(.red050)
        case .darkOrange: Color(.orange050)
        case .darkBrown: Color(.brown050)
        case .darkYellow: Color(.yellow050)
        case .darkLime: Color(.lime050)
        case .darkGreen: Color(.green050)
        case .darkTeal: Color(.teal050)
        case .darkMint: Color(.mint050)
        case .darkGray: Color(.gray050)
        }
    }
}

