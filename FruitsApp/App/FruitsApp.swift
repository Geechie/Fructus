//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Brandon Taylor on 6/3/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView(fruits: fruitData)
            } else {
                ContentView() 
            }
        }
    }
}
