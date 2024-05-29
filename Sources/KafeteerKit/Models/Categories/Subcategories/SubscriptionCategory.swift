//
//  SubscriptionCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    public enum Subscription: String, CategoryRepresentable {
        public static var categoryIcon: Self = .cloud
        public static var categoryName = String(localized: "Subscription")
        public var asPaymentCategory: PaymentCategory { .subscription(self) }
        
        case membership
        case music
        case video
        case gamingService
        case cloud
        case vpn
        case dataStorage
        case app
        case learning
        case newspaper
        
        public enum Keyword: String, KeywordRepresentable {
            case membership
            case music
            case spotify
            case appleMusic
            case video
            case streaming
            case netflix
            case youtube
            case gamingService
            case steam
            case cloud
            case vpn
            case dataStorage
            case dataProtection
            case app
            case learning
            case courses
            case newspaper
            
            public var value: Subscription {
                switch self {
                case .membership: .membership
                case .music, .spotify, .appleMusic: .music
                case .video, .streaming, .netflix, .youtube: .video
                case .gamingService, .steam: .gamingService
                case .cloud: .cloud
                case .vpn: .vpn
                case .dataStorage, .dataProtection: .dataStorage
                case .app: .app
                case .learning, .courses: .learning
                case .newspaper: .newspaper
                }
            }
        }
        
        public var iconName: String {
            switch self {
            case .membership: "person.text.rectangle" // 􀿒
            case .music: "music.note" // 􀑪
            case .video: "video" // 􀍉
            case .gamingService: "network" // 􀤆
            case .app: "app.badge" // 􀑏
            case .cloud: "cloud" // 􀇂
            case .vpn: "network.badge.shield.half.filled" // 􁅏
            case .dataStorage: "externaldrive.badge.icloud" // 􀪹
            case .learning: "brain" // 􀯐
            case .newspaper: "newspaper" // 􀤦
            }
        }
        
        public var name: String {
            switch self {
            case .membership: String(localized: "Membership")
            case .music: String(localized: "Music")
            case .video: String(localized: "Video")
            case .gamingService: String(localized: "Gaming Service")
            case .app: String(localized: "In-App Purchase")
            case .cloud: String(localized: "Cloud Service")
            case .vpn: String(localized: "VPN")
            case .dataStorage: String(localized: "Data Storage")
            case .learning: String(localized: "Learning Platform")
            case .newspaper: String(localized: "Newspaper")
            }
        }
    }
}
