
import UIKit

enum PlantsCareType: String, CaseIterable, Codable {
    case humidity = "CARE_TYPE_HUMIDITY"
    case misting = "CARE_TYPE_MISTING"
    case rotating = "CARE_TYPE_ROTATE"
    case watering = "CARE_TYPE_WATERING"
    
    var text: String {
        switch self {
        case .humidity:
            return RLocalization.care_type_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .misting:
            return RLocalization.care_type_misting.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .rotating:
            return RLocalization.care_type_rotating.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .watering:
            return RLocalization.care_type_watering.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
    
    var image: UIImage {
        switch self {
        case .humidity:
            return RImage.plants_detail_humidity_ic()!
        case .misting:
            return RImage.plants_detail_misting_ic()!
        case .rotating:
            return RImage.plants_detail_rotating_ic()!
        case .watering:
            return RImage.plants_detail_watering_ic()!
        }
    }
    
    var darklmage: UIImage {
        switch self {
        case .humidity:
            return RImage.garden_care_humidity_ic()!
        case .misting:
            return RImage.garden_care_misting_ic()!
        case .rotating:
            return RImage.garden_care_rotating_ic()!
        case .watering:
            return RImage.garden_care_watering_ic()!
        }
    }
}
