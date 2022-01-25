import Vapor


func routes(_ app: Application) throws {
    let userController = UserController()
    let itemsController = ItemsController()
    let reviewsController = ReviewsController()
    let cartController = CartController()
    

    app.post("auth", use: userController.auth)
    app.post("logout", use: userController.logout)
    app.post("signup", use: userController.signup)
    app.post("changeuserdata", use: userController.changeUserData)
    app.post("getcatalog", use: itemsController.getCatalog)
    app.post("getgood", use: itemsController.getGood)
    app.post("getreviews", use: reviewsController.getReviews)
    app.post("addreview", use: reviewsController.addReview)
    app.post("removereview", use: reviewsController.removeReview)
    app.post("getcart", use: cartController.getCart)
    app.post("paycart", use: cartController.payCart)
    app.post("addtocart", use: cartController.addToCart)
    app.post("deletefromcart", use: cartController.deleteFromCart)
}
