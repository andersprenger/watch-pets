//
//  WristpetApp.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import SwiftUI

@main
struct WristpetApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
