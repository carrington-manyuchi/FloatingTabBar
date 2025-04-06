//
//  HomeView.swift
//  FloatingTabBar
//
//  Created by Manyuchi, Carrington C on 2025/04/06.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(1...15, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.background)
                            .frame(height: 150)
                    }
                }
                .padding(15)
            }
            .navigationTitle("Floating Tab Bar")
            .background(.primary.opacity(0.07))
            .safeAreaPadding(.bottom, 60)
        }
    }
}

#Preview {
    HomeView()
}
