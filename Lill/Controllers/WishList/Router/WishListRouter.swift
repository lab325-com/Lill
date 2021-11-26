
import Foundation

class WishListRouter: BaseRouter {
    
    func pushDetail(id: String) {
        let controller = PlantsDetailController(id: id)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
}
