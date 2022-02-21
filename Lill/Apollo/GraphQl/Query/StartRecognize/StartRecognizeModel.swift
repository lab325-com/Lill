
import Foundation

struct RecognitionDataModel: Codable {
    let startRecognize: RecognitionModel
}

struct RecognitionModel: Codable {
    let recognizeId: String
    let plants: [PlantModel]
}
