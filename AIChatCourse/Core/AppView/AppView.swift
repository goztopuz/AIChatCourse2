//
//  AppView.swift
//  AIChatCourse
//
//  Created by Gokhan OZTOPUZ on 27.04.2026.
//

import SwiftUI

struct AppView: View {

    @AppStorage("showTabbarView")  var showTabBar: Bool = false
    var body: some View {
        AppViewBuilder(showTabBar: showTabBar, tabbarView: {
            ZStack {
                Color.red.ignoresSafeArea()
                Text("Tabbar")
            }
        },
                       onboardingView: {
            ZStack {
                Color.blue.ignoresSafeArea()
                Text("Onboarding")
            }
        }
                       
        )
        .onTapGesture {
            showTabBar.toggle()
        }
    }
}




#Preview {
    AppView(showTabBar: true)
}

#Preview("AppView-Onboarding"){
    AppView(showTabBar: false)
}
