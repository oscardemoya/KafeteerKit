//
//  SubscriptionCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Subscription: String, CategoryRepresentable {
        public static var defaultValue: Self = .cloud
        public static var categoryName = String(localized: "Subscription")
        public var asPaymentCategory: PaymentCategory { .subscription(self) }
        
        case music
        case video
        case gaming
        case cloud
        case vpn
        case dataStorage
        case dataProtection
        case app
        case social
        case learning
        
        public enum Keyword: String, KeywordRepresentable {
            case music
            case spotify
            case appleMusic
            case video
            case netflix
            case youtube
            case gaming
            case nintendo
            case playStation
            case xbox
            case cloud
            case vpn
            case dataStorage
            case dataProtection
            case app
            case social
            case verification
            case learning
            case courses
            
            public var value: Subscription {
                switch self {
                case .music, .spotify, .appleMusic: .music
                case .video, .netflix, .youtube: .video
                case .gaming, .nintendo, .playStation, .xbox: .gaming
                case .cloud: .cloud
                case .vpn: .vpn
                case .dataStorage: .dataStorage
                case .dataProtection: .dataProtection
                case .app: .app
                case .social, .verification: .social
                case .learning, .courses: .learning
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .music: "music.note" // 􀑪
            case .video: "video" // 􀍉
            case .gaming: "gamecontroller" // 􀛸
            case .app: "app.badge" // 􀑏
            case .cloud: "cloud" // 􀇂
            case .vpn: "network.badge.shield.half.filled" // 􁅏
            case .dataStorage: "externaldrive.badge.icloud" // 􀪹
            case .dataProtection: "lock.shield" // 􀞙
            case .social: "checkmark.seal" // 􀇺
            case .learning: "brain" // 􀯐
            }
        }
        
        public var name: String {
            switch self {
            case .music: String(localized: "Music")
            case .video: String(localized: "Video")
            case .gaming: String(localized: "Gaming")
            case .app: String(localized: "App")
            case .cloud: String(localized: "Cloud")
            case .vpn: String(localized: "VPN")
            case .dataStorage: String(localized: "Data Storage")
            case .dataProtection: String(localized: "Data Protection")
            case .social: String(localized: "Social")
            case .learning: String(localized: "Learning Platform")
            }
        }
    }
}
