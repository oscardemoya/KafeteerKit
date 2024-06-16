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
    case gray

    public var id: Self { self }
    
    public var baseColor: Color {
        switch self {
        case .blue: Color(.blue500)
        case .indigo: Color(.indigo500)
        case .purple: Color(.purple500)
        case .pink: Color(.pink500)
        case .red: Color(.red500)
        case .orange: Color(.orange500)
        case .brown: Color(.brown500)
        case .yellow: Color(.yellow500)
        case .lime: Color(.lime500)
        case .green: Color(.green500)
        case .teal: Color(.teal500)
        case .gray: Color(.gray500)
        }
    }
    
    public func background(for variant: Variant) -> Color {
        switch variant {
        case .light: baseColor.shade(.shade2)
        case .base: baseColor.shade(.shade3)
        case .dark: baseColor.shade(.shade4)
        }
    }
    
    public func foreground(for variant: Variant) -> Color {
        switch variant {
        case .light: baseColor.shade(.shade6)
        case .base: baseColor.shade(.shade7)
        case .dark: baseColor.shade(.shade8)
        }
    }
}

