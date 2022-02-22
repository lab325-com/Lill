
import Foundation

struct DiagnoseDataModel: Codable {
    let startDiagnose: DiagnoseResultModel?
}

struct DiagnoseResultModel: Codable {
    let id: String
    let plant: DiagnosePlantModel?
    let desease: DiagnoseDiseaseModel?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case plant = "Plant"
        case desease = "Disease"
    }
}

struct DiagnosePlantModel: Codable {
    let latinName: String?
    let names: String?
    let plantImages: [MediaModel]
}

struct DiagnoseDiseaseModel: Codable {
    let id: String
    let name: String
    let description: String
}
