//
//  AppState.swift
//  AIChatCourse
//
//  Created by Gokhan OZTOPUZ on 16.05.2026.
//
import SwiftUI

@Observable
class AppState{
    private(set) var showTabBar: Bool
    {
        didSet{
            UserDefaults.showTabBarView = showTabBar
        }
    }
    
    init(showTabBar: Bool = UserDefaults.showTabBarView) {
        self.showTabBar = showTabBar
    }
    func updateViewState(showTabBarView:Bool)
    {
        showTabBar = showTabBarView
    }
}
extension UserDefaults
{
    private struct Keys{
        static let shoTabBarView = "showTabbarView"
    }
    static var showTabBarView: Bool{
        get{
            standard.bool( forKey: Keys.shoTabBarView)
        }
        set{
            standard.set(newValue, forKey: Keys.shoTabBarView)
        }
    }
}
