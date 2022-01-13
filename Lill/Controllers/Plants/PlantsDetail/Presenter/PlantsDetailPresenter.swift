
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol PlantsDetailOutputProtocol: BaseController {
    func success(model: PlantDataModel, abouts: [PlantsAboutType], cares: [(type: PlantsCareType, care: CaresModel)])
    func successSetFavorite()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol PlantsDetailPresenterProtocol: AnyObject {
    init(view: PlantsDetailOutputProtocol)
    
    func getPlantDetail(id: String)
    func setFavoritePlant(id: String, isFavorite: Bool)
}

class PlantsDetailPresenter: PlantsDetailPresenterProtocol {
    
    private weak var view: PlantsDetailOutputProtocol?
    private var request: Cancellable?

    var model: PlantDataModel?
    
    required init(view: PlantsDetailOutputProtocol) {
        self.view = view
    }
    
    func setFavoritePlant(id: String, isFavorite: Bool) {
        request?.cancel()
        
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: isFavorite)
        request = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.successSetFavorite()
        }, failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func getPlantDetail(id: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = PlantByIdQuery(id: id)
        request = Network.shared.query(model: PlantDataModel.self, query, controller: view, successHandler: { [weak self] model in
            guard let `self` = self else { return }
            self.model = model
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
        
        if let _ = model.plantById.climate?.habit {
            abouts.append(.habit)
        }
        
        if let _ = model.plantById.climate?.shade {
            abouts.append(.shade)
        }

        if let _ = model.plantById.climate?.moisture {
            abouts.append(.moisture)
        }

        if let _ = model.plantById.climate?.height {
            abouts.append(.height)
        }

        if let _ = model.plantById.climate?.soil {
            abouts.append(.soil)
        }

        if let _ = model.plantById.climate?.ph {
            abouts.append(.ph)
        }

        if let _ = model.plantById.climate?.deciduous {
            abouts.append(.deciduous)
        }

        if let _ = model.plantById.climate?.hardiness {
            abouts.append(.hardiness)
        }
        
        return abouts
    }
    
    func createCares(model: PlantDataModel) -> [(type: PlantsCareType, care: CaresModel)] {
        var caresType = [(type: PlantsCareType, care: CaresModel)]()
        let cares = model.plantById.cares ?? []
        for care in cares {
            
            caresType.append((type: care.type.name, care: care))
            if caresType.count == 4 {
                return caresType
            }
        }
        
        return caresType
    }
}
