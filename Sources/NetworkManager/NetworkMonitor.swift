
import Network
import Foundation

@available(iOS 13.0, *)
public final class NetworkMonitor: ObservableObject {
    
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "networkmanager.queue")
    
    /// Update connenction status
    @Published public var isConnected = true
    
   public init() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.isConnected = path.status == .satisfied ? true : false
            }
        }
        
        monitor.start(queue: queue)
    }
}
