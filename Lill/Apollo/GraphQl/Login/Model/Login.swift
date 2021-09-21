
import Foundation

struct LoginModel: Codable {
    let login: UserModel
}

struct UserModel: Codable {
    let avatar: String
    let barer: String
    let id: String
    let lang: String
    let name: String
}
