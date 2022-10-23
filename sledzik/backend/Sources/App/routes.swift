import Vapor

func routes(_ app: Application) throws {
    app.post("v1/users/current/views") { req async -> String in
        return "It works."
    }
}
