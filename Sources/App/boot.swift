import Vapor

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // your code here
   
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world "
    }
    router.get("hello","Girish") { req in
        return "Hello, world \n \t - Girish!"
    }
    router.get("Girish") { request in
        return "Hello, Girish...!"
    }
    router.get() { req in
        return "Hello, world....!"
    }
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
