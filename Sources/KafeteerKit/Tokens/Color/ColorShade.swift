//
//  ColorShade.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 12/03/24.
//

import SwiftUI

public enum ColorShade: CaseIterable, Identifiable {
    case shade1
    case shade2
    case shade3
    case shade4
    case shade5
    case shade6
    case shade7
    case shade8
    case shade9
    
    public var id: Self { self }
    
    var blendColor: Color? {
        switch self {
        case .shade1: Color(.lightOverlay)
        case .shade2: Color(.lightOverlay)
        case .shade3: Color(.lightOverlay)
        case .shade4: Color(.lightOverlay)
        case .shade5: nil
        case .shade6: Color(.darkOverlay)
        case .shade7: Color(.darkOverlay)
        case .shade8: Color(.darkOverlay)
        case .shade9: Color(.darkOverlay)
        }
    }
    
    // TODO: Move values to a Config file
    var blendIntensity: CGFloat {
        switch self {
        case .shade1: 0.8
        case .shade2: 0.6
        case .shade3: 0.4
        case .shade4: 0.2
        case .shade5: 0
        case .shade6: 0.2
        case .shade7: 0.4
        case .shade8: 0.6
        case .shade9: 0.8
        }
    }
}

public extension Color {
    func shade(_ shade: ColorShade) -> Color {
        guard let blendColor = shade.blendColor else {
            return self
        }
        return Color.blend(color1: self, intensity1: 1.0 - shade.blendIntensity,
                           color2: blendColor, intensity2: shade.blendIntensity)
    }
}
