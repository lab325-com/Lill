
import Foundation

class PlantsRouter: BaseRouter {
    
    func pushWishList() {
        let controller = WishListController()
        push(controller: controller)
    }
    
    func presentChooseIdentify() {
        let controller = ChooseIdentifyController()
        present(controller: controller, animated: false, presentStyle: .overFullScreen)
    }
    
    func presentIdentify(model: MeDataModel) {
        let controller = IdentifyController()
        controller.meModel = model
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
