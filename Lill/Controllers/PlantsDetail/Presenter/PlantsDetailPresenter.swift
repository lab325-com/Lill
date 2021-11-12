
import Foundation
import Apollo
import UIKit

enum PlantsAboutType: Int, CaseIterable {
    case habit
    case shade
    case moisture
    case height
    case soil
    case ph
    case deciduous
    case hardiness
}

enum PlantsCareType: String, CaseIterable, Codable {
    case humidity = "CARE_TYPE_HUMIDITY"
    case misting = "CARE_TYPE_MISTING"
    case rotating = "CARE_TYPE_ROTATE"
    case watering = "CARE_TYPE_WATERING"
}

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol PlantsDetailOutputProtocol: BaseController {
    func success(model: PlantDataModel, abouts: [PlantsAboutType], cares: [(type: PlantsCareType, care: CaresModel)])
    func success(model: FavoritePlantDataModel)
    func success(model: PlantToGardenDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol PlantsDetailPresenterProtocol: AnyObject {
    init(view: PlantsDetailOutputProtocol)
    
    func getPlantDetail(id: String)
    func setFaviritePlant(id: String, isFavorite: Bool)
    func addPlantToGarden(plantId: String, gardenId: String)
}

class PlantsDetailPresenter: PlantsDetailPresenterProtocol {
    
    private weak var view: PlantsDetailOutputProtocol?
    private var request: Cancellable?
    
    required init(view: PlantsDetailOutputProtocol) {
        self.view = view
    }
    
    func addPlantToGarden(plantId: String, gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: gardenId)
        request = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func setFaviritePlant(id: String, isFavorite: Bool) {
        request?.cancel()
        
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: isFavorite)
        request = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.success(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func getPlantDetail(id: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = PlantByIdQuery(id: id)
        request = Network.shared.query(model: PlantDataModel.self, query, successHandler: { [weak self] model in
            guard let `self` = self else { return }
            self.view?.stopLoading()
            let about = self.createAbout(model: model)
            let cares = self.createCares(model: model)
            self.view?.success(model: model, abouts: about, cares: cares)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    private func createAbout(model: PlantDataModel) -> [PlantsAboutType] {
        var abouts: [PlantsAboutType] = []
        
        if let _ = model.plantById.climate.habit {
            abouts.append(.habit)
        }
        
        if let _ = model.plantById.climate.shade {
            abouts.append(.shade)
        }

        if let _ = model.plantById.climate.moisture {
            abouts.append(.moisture)
        }

        if let _ = model.plantById.climate.height {
            abouts.append(.height)
        }

        if let _ = model.plantById.climate.soil {
            abouts.append(.soil)
        }

        if let _ = model.plantById.climate.ph {
            abouts.append(.ph)
        }

        if let _ = model.plantById.climate.deciduous {
            abouts.append(.deciduous)
        }

        if let _ = model.plantById.climate.hardiness {
            abouts.append(.hardiness)
        }
        
        return abouts
    }
    
    func createCares(model: PlantDataModel) -> [(type: PlantsCareType, care: CaresModel)] {
        var caresType = [(type: PlantsCareType, care: CaresModel)]()
        let cares = model.plantById.cares
        for care in cares {
            
            caresType.append((type: care.type.name, care: care))
            if caresType.count == 4 {
                return caresType
            }
        }
        
        return caresType
    }
}
