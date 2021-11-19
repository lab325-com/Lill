
import Foundation

class PlantsRouter: BaseRouter {
    
    func pushWishList() {
        let controller = WishListController()
        push(controller: controller)
    }
    
    func pushDetail(id: String) {
        let controller = PlantsDetailController(id: id)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func presentChooseIdentify() {
        let controller = ChooseIdentifyController()
        controller.hidesBottomBarWhenPushed = true
        present(controller: controller, animated: false, presentStyle: .overFullScreen)
    }
    
    func presentIdentify() {
        let controller = IdentifyController()
        present(controller: controller)
    }
    
    func presentDiagnosis() {
        let controller = DiagnosisController()
        present(controller: controller)
    }
    
    func presentSubscribe() {
        let controller = SubcribeController()
        present(controller: controller)
    }
}
