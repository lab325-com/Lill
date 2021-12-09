
import Foundation

class GardenPlantCaresEditRouter: BaseRouter {
    
    func pushAddCare(cares: [CareType]) {
        let controller = GardenPlantAddCares()
        controller.cares = cares
        push(controller: controller)
    }
}
