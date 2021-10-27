
import Foundation

struct MediaModel: Codable {
    let media_id: String
    let type: String?
    let urlAndroidPhone: String?
    let urlAndroidTablet: String?
    let urlIosFull: String
    let urlIosPrev: String
}
