//
//  CategoryRepresentable.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import SwiftUI

public protocol CategoryRepresentable: RawRepresentable, CaseInsensitive, IconRepresentable {
    var name: String { get }
}
