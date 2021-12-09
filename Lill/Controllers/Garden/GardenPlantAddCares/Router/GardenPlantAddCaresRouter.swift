
import Foundation

class GardenPlantAddCaresRouter: BaseRouter {
    
    func pushAddCareSetup(cares: [CaresModel]) {
        let controller = GardenPlantAddCaresSetup(cares: cares)
        controller.cares = cares
        push(controller: controller)
    }
}
