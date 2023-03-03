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
    
    let controllerReviews = ReviewController()
    app.get("addReview", use: controllerReviews.addReview)
    app.get("removeReview", use: controllerReviews.removeReview)
    app.get("getListReview", use: controllerReviews.getListReview(_:))
    
    let controllerBasket = BasketController()
    app.get("addToBasket", use: controllerBasket.addToBasket)
    app.get("removeFromBasket", use: controllerBasket.removeFromBasket)
    app.get("pay", use: controllerBasket.payBasket)

    try app.register(collection: TodoController())
}
