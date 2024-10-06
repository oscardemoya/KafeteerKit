//
//  ViewState.swift
//  KafeteerKit
//
//  Created by Oscar De Moya on 10/5/24.
//

import Foundation

public enum ViewState<T>: Equatable {
    case initial
    case loading
    case content(T)
    case empty
    case failure(Error)
    
    public var isLoading: Bool {
        if self == .loading { true } else { false }
    }
    
    public var content: T? {
        switch self {
        case .content(let content): content
        default: nil
        }
    }
    
    public static func == (lhs: ViewState<T>, rhs: ViewState<T>) -> Bool {
        switch (lhs, rhs) {
        case (.initial, .initial),
            (.loading, .loading),
            (.content, .content),
            (.empty, .empty),
            (.failure, .failure):
            true
        default:
            false
        }
    }
}
