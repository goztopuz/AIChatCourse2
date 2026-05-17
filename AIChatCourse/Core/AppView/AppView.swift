//
//  AppView.swift
//  AIChatCourse
//
//  Created by Gokhan OZTOPUZ on 27.04.2026.
//

import SwiftUI



struct AppView: View {

    @State  var appState: AppState = AppState()
    
    var body: some View {
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            tabbarView: {
         
                TabBarView()
            
        },
                       onboardingView: {
            
               WelcomeView()
            
        }
        ).environment(appState)
                       
        
        
    }
}




#Preview {
    AppView(appState: AppState(showTabBar: true))
}

#Preview("AppView-Onboarding"){
    AppView(appState: AppState(showTabBar: false))
}
