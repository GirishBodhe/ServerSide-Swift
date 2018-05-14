import App
//



// in main.swift...
import Foundation

let salutations: [String] = [
    "Your most humble servant and most faithful friend,",
    "Adieu! take care of yourself; and, I entreat you, write!",
    "Your old friend and erstwhile companion,",
    "May your doom be other than mine, and your treasure remain with you to the end!",
    "A thousand greetings, etc.",
    "A tender adieu.",
    "Peace out."
]
// Resolve the port that we want the server to listen on
let port: Int
let defaultPort = 80
if let requestedPort = ProcessInfo.processInfo.environment["PORT"] {
    port = Int(requestedPort) ?? defaultPort
} else {
    port = defaultPort
}

try app(.detect()).run()
