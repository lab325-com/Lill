
import Foundation

struct MediaDataModel: Codable {
    let uploadMediaRecognition: MediaModel
}

struct MediaModel: Codable {
    let urlIosFull: String
}
