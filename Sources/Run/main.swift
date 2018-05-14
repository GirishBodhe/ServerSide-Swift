//import App
//
//try app(.detect()).run()


// in main.swift...
import Foundation

// Resolve the port that we want the server to listen on
let port: Int
let defaultPort = 80
if let requestedPort = ProcessInfo.processInfo.environment["PORT"] {
    port = Int(requestedPort) ?? defaultPort
} else {
    port = defaultPort
}
