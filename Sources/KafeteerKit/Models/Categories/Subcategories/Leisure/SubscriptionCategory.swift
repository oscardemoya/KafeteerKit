//
//  SubscriptionCategory.swift
//
//
//  Created by Oscar De Moya on 8/05/23.
//

import Foundation

public extension PaymentCategory {
    enum Subscription: String, CategoryRepresentable {
        public static var lifeArea: LifeArea = .leisure
        public static var categoryIcon: Self = .cloud
        public static var categoryName = String(localized: "Subscription", bundle: .module)
        public var asPaymentCategory: PaymentCategory { .subscription(self) }
        
        case membership
        case music
        case video
        case gamingService
        case cloud
        case vpn
        case dataStorage
        case app
        
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
            }
        }
        
        public var name: String {
            switch self {
            case .membership: String(localized: "Membership", bundle: .module)
            case .music: String(localized: "Music", bundle: .module)
            case .video: String(localized: "Video", bundle: .module)
            case .gamingService: String(localized: "Gaming Service", bundle: .module)
            case .app: String(localized: "In-App Purchase", bundle: .module)
            case .cloud: String(localized: "Cloud Service", bundle: .module)
            case .vpn: String(localized: "VPN", bundle: .module)
            case .dataStorage: String(localized: "Data Storage", bundle: .module)
            }
        }
    }
}
