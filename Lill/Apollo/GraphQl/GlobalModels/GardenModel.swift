
import Foundation

struct GardenModel: Codable {
    let id: String
    let name: String
    let userDescription: String?
    let userMainImage: MediaModel?
    let userGalleryImages: [MediaModel]?
    let isDefault: Bool
}
