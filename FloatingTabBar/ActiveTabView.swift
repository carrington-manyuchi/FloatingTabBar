//
//  ContentView.swift
//  FloatingTabBar
//
//  Created by Manyuchi, Carrington C on 2025/04/06.
//

import SwiftUI

struct ActiveTabView: View {
    
    /// View properties
    ///
    @State private var activeTab: TabModel = .home
    @State private var isTabBarHidden: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                TabView(selection: $activeTab) {
                    Tab(value: .home) {
                        HomeView()
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: .search) {
                        Text("Search")
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: .notifications) {
                        Text("Notifications")
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: .settings) {
                        Text("Settings")
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                }
            }
            
            CustomTabBar(activeTab: $activeTab)
        }
    }
}

struct HideTabBar: UIViewRepresentable {
    
    var result: () -> ()
    
    func makeUIView(context: Context) -> UIView {
        let  view = UIView(frame: .zero)
        view.backgroundColor = .clear
        DispatchQueue.main.async {
            if let tabController = view.tabController {
                tabController.tabBar.isHidden = true
                result()
            }
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
       
    }
}

extension UIView {
    var tabController: UITabBarController? {
        if let controller = sequence(first: self, next: {
            $0.next
        }).first(where: { $0 is UITabBarController }) as? UITabBarController {
            return controller
        }
        return nil
    }
}

#Preview {
    ActiveTabView()
}
