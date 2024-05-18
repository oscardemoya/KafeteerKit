//
//  CrossplatformFont.swift
//
//
//  Created by Oscar De Moya on 12/03/24.
//

import SwiftUI

#if os(macOS)
    import AppKit
    /// NSFont on macOS
    public typealias CrossplatformFont = NSFont
#else
    import UIKit
    /// UIFont when not on macOS
    public typealias CrossplatformFont = UIFont
#endif
