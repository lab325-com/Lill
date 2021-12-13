
import UIKit

class PlantsRouter: BaseRouter {
    
    func pushWishList(delegate: WishListDelegate) {
        let controller = WishListController(delegate: delegate)
        push(controller: controller)
    }
    
    func pushDetail(id: String, delegate: PlantsDetailDelegate? = nil) {
        let controller = PlantsDetailController(id: id, delegate: delegate)
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
        let nc = UINavigationController(rootViewController: controller)
        nc.modalPresentationStyle = .fullScreen
        present(controller: nc)
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
