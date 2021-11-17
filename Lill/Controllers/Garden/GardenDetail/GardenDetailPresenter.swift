//
//  GardenPresenter.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenDetailOutputProtocol: BaseController {
    func success(model: GardenPlanByIDModel, abouts: [PlantsAboutType], cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)])
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenDetailPresenterProtocol: AnyObject {
    init(view: GardenDetailOutputProtocol)
    
    func getDetailGarden(gardenId: String)
    
}

class GardenDetailPresenter: GardenDetailPresenterProtocol {

    private weak var view: GardenDetailOutputProtocol?
    private var request: Cancellable?
    
    var model: GardenPlanByIDModel?
    var cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)]?
    
    required init(view: GardenDetailOutputProtocol) {
        self.view = view
    }
    
    func getDetailGarden(gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = GardenPlantByIdQuery(id: gardenId)
        request = Network.shared.query(model: GardenPlanByIDModel.self, query, successHandler: { [weak self] model in
            guard let `self` = self else { return }
            self.model = model
            self.view?.stopLoading()
            
            let about = self.createAbout(model: model.gardenPlantById.plant?.climate)
            let cares = self.createCares(model: model)
            self.cares = cares
            self.view?.success(model: model, abouts: about, cares: cares)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    private func createAbout(model: ClimatModel?) -> [PlantsAboutType] {
        var abouts: [PlantsAboutType] = []
        
        if let _ = model?.habit {
            abouts.append(.habit)
        }
        
        if let _ = model?.shade {
            abouts.append(.shade)
        }

        if let _ = model?.moisture {
            abouts.append(.moisture)
        }

        if let _ = model?.height {
            abouts.append(.height)
        }

        if let _ = model?.soil {
            abouts.append(.soil)
        }

        if let _ = model?.ph {
            abouts.append(.ph)
        }

        if let _ = model?.deciduous {
            abouts.append(.deciduous)
        }

        if let _ = model?.hardiness {
            abouts.append(.hardiness)
        }
        
        return abouts
    }
    
    func createCares(model: GardenPlanByIDModel) -> [(type: PlantsCareType, care: GardenShortPlantCaresModel)] {
        var caresType = [(type: PlantsCareType, care: GardenShortPlantCaresModel)]()
        let cares = model.gardenPlantById.gardenPlantCares
        for care in cares {
            
            caresType.append((type: care.type.name, care: care))
            if caresType.count == 4 {
                return caresType
            }
        }
        
        return caresType
    }
}
