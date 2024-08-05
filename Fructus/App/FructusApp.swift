//
//  FructusApp.swift
//  Fructus
//
//  Created by sidiqtoha on 02/08/24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnBoarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
