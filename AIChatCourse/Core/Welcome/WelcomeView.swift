//
//  WelcomeView.swift
//  AIChatCourse
//
//  Created by Gokhan OZTOPUZ on 28.04.2026.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack
        {
            VStack
            {
                Text("Welcome")
                    .frame(maxHeight: .infinity)
                
                NavigationLink{
                  OnboardingCompletedView()
                } label: {
                    Text("Get Started")
                        .callToActionButton()
                }
                
            }
            .padding(16)
         
        }
    }
}

#Preview {
    WelcomeView()
}
