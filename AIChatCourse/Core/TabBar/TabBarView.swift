//
//  TabBarView.swift
//  AIChatCourse
//
//  Created by Gokhan OZTOPUZ on 27.04.2026.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
           ExploreView()
                .tabItem{
                    Label("Explore",systemImage: "eyes")
                }
        ChatsView()
                .tabItem {
                    Label("Chats", systemImage: "bubble.left.and.bubble.right.fill")
                }
         ProfileView()
                .tabItem{
                    Label("Profile",systemImage: "person.fill")
                }
        }

    }
}

#Preview {
    TabBarView()
}
