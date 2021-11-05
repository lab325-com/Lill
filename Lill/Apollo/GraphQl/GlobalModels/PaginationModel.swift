
import Foundation

struct PaginationModel: Codable {
    let limit: Int
    let nextPageExist: Bool
    let ofset: Int
    let prevPageExist: Bool
    let totalPages: Int
}
