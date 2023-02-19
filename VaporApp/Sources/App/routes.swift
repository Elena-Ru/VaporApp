import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    let controller = AuthController()
    app.get("register", use: controller.register)
    app.get("login", use: controller.login)
    app.get("logout", use: controller.logout)
    app.get("changeUserData", use: controller.changeUserData)
    
    let controllerProducts = ProductsController()
    app.get("getGoodById", use: controllerProducts.getGoodById)
    app.get("catalogData", use: controllerProducts.catalogData)

    try app.register(collection: TodoController())
}
