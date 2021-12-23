
import Foundation

struct MediaModel: Codable, Equatable {
    let id: String?
    let type: String?
    var notes: String?
    let urlAndroidPhone: String?
    let urlAndroidTablet: String?
    var urlIosFull: String
    let urlIosPrev: String
    let createdAt: String?
    
    mutating func changeUrlIosFull(_ urlIosFull: String) {
        self.urlIosFull = urlIosFull
    }
    
    mutating func changeNotes(_ notes: String) {
        self.notes = notes
    }
    
    var date: Date? {
        guard let createdAt = createdAt else {
            return nil
        }

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.date(from: createdAt)
    }
}
