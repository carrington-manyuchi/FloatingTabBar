//
//  Tab.swift
//  FloatingTabBar
//
//  Created by Manyuchi, Carrington C on 2025/04/06.
//

import Foundation

enum TabModel: String , CaseIterable {
    case home = "house"
    case search = "magnifyingglass"
    case notifications = "bell"
    case settings = "gearshape"
    
    var title: String {
        switch self {
        case .home: "Home"
        case .search: "Search"
        case .notifications: "Notifications"
        case .settings: "Settings"
        }
    }
}
