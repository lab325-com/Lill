
import Foundation

class PlantsRouter: BaseRouter {
    
    func pushWishList() {
        let controller = WishListController()
        push(controller: controller)
    }
}
