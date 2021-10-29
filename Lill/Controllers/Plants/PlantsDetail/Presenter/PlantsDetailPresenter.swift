
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

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol PlantsDetailOutputProtocol: BaseController {
    func success(model: PlantDataModel, abouts: [PlantsAboutType])
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol PlantsDetailPresenterProtocol: AnyObject {
    init(view: PlantsDetailOutputProtocol)
    
    func getPlantDetail(id: String)
}

class PlantsDetailPresenter: PlantsDetailPresenterProtocol {
    
    private weak var view: PlantsDetailOutputProtocol?
    private var request: Cancellable?
    
    required init(view: PlantsDetailOutputProtocol) {
        self.view = view
    }
    
    func getPlantDetail(id: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = PlantByIdQuery(id: id)
        request = Network.shared.query(model: PlantDataModel.self, query, successHandler: { [weak self] model in
            guard let `self` = self else { return }
            self.view?.stopLoading()
            let about = self.createAbout(model: model)
            self.view?.success(model: model, abouts: about)
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
}
