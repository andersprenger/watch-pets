//
//  WristpetApp.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import SwiftUI

@main
struct WristpetApp: App {
    @StateObject var modelData = ModelData()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(modelData)
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
