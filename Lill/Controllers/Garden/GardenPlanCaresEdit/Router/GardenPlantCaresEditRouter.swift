
import Foundation

class GardenPlantCaresEditRouter: BaseRouter {
    
//    func pushWishList(delegate: WishListDelegate) {
//        let controller = WishListController(delegate: delegate)
//        push(controller: controller)
//    }
    func pushAddCare() {
        let controller = GardenPlantAddCares()
        push(controller: controller)
    }
}
