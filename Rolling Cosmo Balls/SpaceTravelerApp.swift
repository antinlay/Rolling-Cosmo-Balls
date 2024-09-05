//
//  SpaceTravelerApp.swift
//  SpaceTraveler
//
//  Created by Janiece Eleonour on 05.08.2024.
//

import SwiftUI

@main
struct SpaceTravelerApp: App {
    @StateObject var router = Router()
    @StateObject var score = Score()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
                .environmentObject(score)
        }
    }
}
