//
//  CheckErrorApp.swift
//  CheckError
//
//  Created by Apple on 10.11.2023.
//

import SwiftUI

@main
struct CheckErrorApp: App {
    
    @StateObject private var networkManager = NetworkManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(networkManager)
        }
    }
}
