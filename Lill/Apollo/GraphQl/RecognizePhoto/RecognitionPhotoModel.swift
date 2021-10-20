
import Foundation

struct RecognitionDataModel: Codable {
    let startRecognition: StartRecognitionModel
}

struct StartRecognitionModel: Codable {
    let plants: [PlantsModel]
}
