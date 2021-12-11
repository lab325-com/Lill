
import Foundation

class GardenPlantAddCaresRouter: BaseRouter {
    
    func pushAddCareSetup(gardenPlantId: String, cares: [CaresModel]) {
        let controller = GardenPlantAddCaresSetup(gardenPlantId: gardenPlantId, cares: cares)
        push(controller: controller)
    }
}
