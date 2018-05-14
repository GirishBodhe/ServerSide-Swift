import App
//



// in main.swift...
import Foundation

// Resolve the port that we want the server to listen on
let port: Int
let defaultPort = 8000
if let requestedPort = ProcessInfo.processInfo.environment["PORT"] {
    port = Int(requestedPort) ?? defaultPort
} else {
    port = defaultPort
}

try app(.detect()).run()
