//
//  SettingsView.swift
//  AIChatCourse
//
//  Created by Gokhan OZTOPUZ on 16.05.2026.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Environment(AppState.self) private var appState
    
    var body: some View {
        
        NavigationStack{
            List{
                Button{
                    onSignoutPressed()
                } label: {
                    
                Text("Sign Out")
                    
                }
            }
            .navigationTitle("Settings")
        }
       
    
        
    }
    func onSignoutPressed()
    {
        dismiss()
        Task{
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabBarView: false)

        }
    }
}

#Preview {
    SettingsView()
        .environment(AppState())
}
