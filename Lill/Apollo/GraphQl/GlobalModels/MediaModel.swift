
import Foundation

struct MediaModel: Codable, Equatable {
    let id: String?
    let type: String?
    let notes: String?
    let urlAndroidPhone: String?
    let urlAndroidTablet: String?
    var urlIosFull: String
    let urlIosPrev: String
    
    mutating func changeUrlIosFull(_ urlIosFull: String) {
        self.urlIosFull = urlIosFull
    }
}
