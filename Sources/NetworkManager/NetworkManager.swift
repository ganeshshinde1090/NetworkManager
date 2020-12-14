
import Network
import Foundation

@available(iOS 13.0, *)
final class NetworkManager: ObservableObject {
    
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "networkmanager.queue")
    
    /// Update connenction status
    @Published var isConnected = true
    
    
    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.isConnected = path.status == .satisfied ? true : false
            }
        }
        
        monitor.start(queue: queue)
    }
}
