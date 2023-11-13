//
//  ContentView.swift
//  CheckError
//
//  Created by Apple on 10.11.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            VStack {
                if networkManager.isConnected {
                    SwiftUIView()
                } else {
                    ErrorWindowView(retryAction: {
                            networkManager.manuallySetConnectionStatus()
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
