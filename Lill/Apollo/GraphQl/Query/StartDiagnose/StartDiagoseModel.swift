
import Foundation

struct DiagnoseDataModel: Codable {
    let startDiagnose: DiagnoseResultModel?
}

struct DiagnoseResultModel: Codable {
    let id: String
    let plant: PlantsModel
    let desease: Disease
}

enum CodingKeys: String, CodingKey {
    case id = "id"
    case plant = "Plant"
    case desease = "Desease"
}

struct Disease: Codable {
    let id: String
    let name: String
    let description: String
}
