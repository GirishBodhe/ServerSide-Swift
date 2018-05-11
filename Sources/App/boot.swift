import Vapor

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // your code here
    drop.get("/") { request in
        return "Hello, Manoj...!"
    }
    drop.get("Girish") { request in
        return "Hello, Girish...!"
    }
}
