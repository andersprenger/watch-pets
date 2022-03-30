//
//  WristpetApp.swift
//  Wristpet WatchKit Extension
//
//  Created by Anderson Sprenger on 29/03/22.
//

import SwiftUI

@main
struct WristpetApp: App {
//    @State var modelData = ModelData()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
