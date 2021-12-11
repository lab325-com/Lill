
import Foundation

class GardenPlantCaresEditRouter: BaseRouter {
    
    func pushAddCare(gardenPlantId: String, cares: [CareType]) {
        let controller = GardenPlantAddCares(gardenPlantId: gardenPlantId, cares: cares)
        push(controller: controller)
    }
}
