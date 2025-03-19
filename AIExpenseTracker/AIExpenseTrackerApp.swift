//
//  AIExpenseTrackerApp.swift
//  AIExpenseTracker
//
//  Created by Billy Huang on 2025/3/18.
//

import SwiftUI

@main
struct AIExpenseTrackerApp: App {
    
    #if os(macOS)
    @NSApplicationDelegateAdapter private var appDelegate: AppDelegate
    
    #else
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    #endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            #if os(macOS)
                .frame(minWidth: 729, minHeight: 480)
            #endif
        }
        #if os(macOS)
        .windowResizability(.contentMinSize)
        #endif
    }
}
