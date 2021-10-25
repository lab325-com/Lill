
import Foundation

struct DiagnoseDataModel: Codable {
    let startDiagnose: DiagnoseResultModel?
}

struct DiagnoseResultModel: Codable {
    let diagnoseDescription: String
    let diagnoseTitle: String
    let plant: PlantsModel
}
