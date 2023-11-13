//
//  Network.swift
//  CheckError
//
//  Created by Apple on 10.11.2023.
//

import Foundation
import Network

class NetworkManager: ObservableObject {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkManager")

    @Published var isConnected = true

    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.isConnected = path.status == .satisfied
                
                print("Network status updated: \(path.status), isConnected: \(self.isConnected)")
            }
        }

        monitor.start(queue: queue)
    }

    func manuallySetConnectionStatus() {
        if !isConnected {
            print("No internet connection")
            return
        }
        
    }
}
