// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct GardenCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - userMainImageId
  public init(name: Swift.Optional<String?> = nil, userMainImageId: Swift.Optional<String?> = nil) {
    graphQLMap = ["name": name, "userMainImageId": userMainImageId]
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var userMainImageId: Swift.Optional<String?> {
    get {
      return graphQLMap["userMainImageId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userMainImageId")
    }
  }
}

public struct GardenPlantCareCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - gardenPlantId
  ///   - name
  ///   - count
  ///   - period
  ///   - careTypeId
  ///   - sendNotificationAt
  public init(gardenPlantId: String, name: Swift.Optional<String?> = nil, count: Int, period: PeriodType, careTypeId: Int, sendNotificationAt: String) {
    graphQLMap = ["gardenPlantId": gardenPlantId, "name": name, "count": count, "period": period, "careTypeId": careTypeId, "sendNotificationAt": sendNotificationAt]
  }

  public var gardenPlantId: String {
    get {
      return graphQLMap["gardenPlantId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gardenPlantId")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var count: Int {
    get {
      return graphQLMap["count"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "count")
    }
  }

  public var period: PeriodType {
    get {
      return graphQLMap["period"] as! PeriodType
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "period")
    }
  }

  public var careTypeId: Int {
    get {
      return graphQLMap["careTypeId"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "careTypeId")
    }
  }

  public var sendNotificationAt: String {
    get {
      return graphQLMap["sendNotificationAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sendNotificationAt")
    }
  }
}

public enum PeriodType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case periodTypeDay
  case periodTypeMonth
  case periodTypeWeek
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "PERIOD_TYPE_DAY": self = .periodTypeDay
      case "PERIOD_TYPE_MONTH": self = .periodTypeMonth
      case "PERIOD_TYPE_WEEK": self = .periodTypeWeek
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .periodTypeDay: return "PERIOD_TYPE_DAY"
      case .periodTypeMonth: return "PERIOD_TYPE_MONTH"
      case .periodTypeWeek: return "PERIOD_TYPE_WEEK"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PeriodType, rhs: PeriodType) -> Bool {
    switch (lhs, rhs) {
      case (.periodTypeDay, .periodTypeDay): return true
      case (.periodTypeMonth, .periodTypeMonth): return true
      case (.periodTypeWeek, .periodTypeWeek): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PeriodType] {
    return [
      .periodTypeDay,
      .periodTypeMonth,
      .periodTypeWeek,
    ]
  }
}

public struct GardenPlantCareUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - name
  ///   - count
  ///   - period
  ///   - sendNotificationAt
  ///   - isActive
  public init(id: String, name: Swift.Optional<String?> = nil, count: Swift.Optional<Int?> = nil, period: Swift.Optional<PeriodType?> = nil, sendNotificationAt: Swift.Optional<String?> = nil, isActive: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["id": id, "name": name, "count": count, "period": period, "sendNotificationAt": sendNotificationAt, "isActive": isActive]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var count: Swift.Optional<Int?> {
    get {
      return graphQLMap["count"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "count")
    }
  }

  public var period: Swift.Optional<PeriodType?> {
    get {
      return graphQLMap["period"] as? Swift.Optional<PeriodType?> ?? Swift.Optional<PeriodType?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "period")
    }
  }

  public var sendNotificationAt: Swift.Optional<String?> {
    get {
      return graphQLMap["sendNotificationAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sendNotificationAt")
    }
  }

  public var isActive: Swift.Optional<Bool?> {
    get {
      return graphQLMap["isActive"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isActive")
    }
  }
}

public struct GardenPlantCreateRecordInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - plant
  ///   - cares
  public init(plant: GardenPlantCreateInput, cares: Swift.Optional<[GPCareCreateInput?]?> = nil) {
    graphQLMap = ["plant": plant, "cares": cares]
  }

  public var plant: GardenPlantCreateInput {
    get {
      return graphQLMap["plant"] as! GardenPlantCreateInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "plant")
    }
  }

  public var cares: Swift.Optional<[GPCareCreateInput?]?> {
    get {
      return graphQLMap["cares"] as? Swift.Optional<[GPCareCreateInput?]?> ?? Swift.Optional<[GPCareCreateInput?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cares")
    }
  }
}

public struct GardenPlantCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - userDescription
  ///   - gardenId
  ///   - userMainImageId
  public init(name: Swift.Optional<String?> = nil, userDescription: Swift.Optional<String?> = nil, gardenId: Swift.Optional<String?> = nil, userMainImageId: Swift.Optional<String?> = nil) {
    graphQLMap = ["name": name, "userDescription": userDescription, "gardenId": gardenId, "userMainImageId": userMainImageId]
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var userDescription: Swift.Optional<String?> {
    get {
      return graphQLMap["userDescription"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userDescription")
    }
  }

  public var gardenId: Swift.Optional<String?> {
    get {
      return graphQLMap["gardenId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gardenId")
    }
  }

  public var userMainImageId: Swift.Optional<String?> {
    get {
      return graphQLMap["userMainImageId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userMainImageId")
    }
  }
}

public struct GPCareCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - count
  ///   - name
  ///   - period
  ///   - sendNotificationAt
  ///   - careTypeId
  public init(count: Int, name: Swift.Optional<String?> = nil, period: PeriodType, sendNotificationAt: String, careTypeId: Int) {
    graphQLMap = ["count": count, "name": name, "period": period, "sendNotificationAt": sendNotificationAt, "careTypeId": careTypeId]
  }

  public var count: Int {
    get {
      return graphQLMap["count"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "count")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var period: PeriodType {
    get {
      return graphQLMap["period"] as! PeriodType
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "period")
    }
  }

  public var sendNotificationAt: String {
    get {
      return graphQLMap["sendNotificationAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sendNotificationAt")
    }
  }

  public var careTypeId: Int {
    get {
      return graphQLMap["careTypeId"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "careTypeId")
    }
  }
}

public struct GardenPlantUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - name
  ///   - userMainImageId
  public init(id: String, name: Swift.Optional<String?> = nil, userMainImageId: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "name": name, "userMainImageId": userMainImageId]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var userMainImageId: Swift.Optional<String?> {
    get {
      return graphQLMap["userMainImageId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userMainImageId")
    }
  }
}

public struct GardenUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - name
  ///   - userMainImageId
  public init(id: String, name: Swift.Optional<String?> = nil, userMainImageId: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "name": name, "userMainImageId": userMainImageId]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var userMainImageId: Swift.Optional<String?> {
    get {
      return graphQLMap["userMainImageId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userMainImageId")
    }
  }
}

public struct GeneratePromoOfferRecordInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productId
  ///   - offerId
  ///   - userName
  public init(productId: String, offerId: String, userName: String) {
    graphQLMap = ["productID": productId, "offerID": offerId, "userName": userName]
  }

  public var productId: String {
    get {
      return graphQLMap["productID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productID")
    }
  }

  public var offerId: String {
    get {
      return graphQLMap["offerID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "offerID")
    }
  }

  public var userName: String {
    get {
      return graphQLMap["userName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }
}

public struct NotificationSettingsUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - cares
  ///   - waitingCares
  ///   - missedCares
  ///   - frequency
  ///   - secondChance
  ///   - secondChanceSendAfter
  ///   - todayList
  ///   - todayListSendAt
  public init(cares: Swift.Optional<Bool?> = nil, waitingCares: Swift.Optional<Bool?> = nil, missedCares: Swift.Optional<Bool?> = nil, frequency: Swift.Optional<String?> = nil, secondChance: Swift.Optional<Bool?> = nil, secondChanceSendAfter: Swift.Optional<String?> = nil, todayList: Swift.Optional<Bool?> = nil, todayListSendAt: Swift.Optional<String?> = nil) {
    graphQLMap = ["cares": cares, "waitingCares": waitingCares, "missedCares": missedCares, "frequency": frequency, "secondChance": secondChance, "secondChanceSendAfter": secondChanceSendAfter, "todayList": todayList, "todayListSendAt": todayListSendAt]
  }

  public var cares: Swift.Optional<Bool?> {
    get {
      return graphQLMap["cares"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cares")
    }
  }

  public var waitingCares: Swift.Optional<Bool?> {
    get {
      return graphQLMap["waitingCares"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "waitingCares")
    }
  }

  public var missedCares: Swift.Optional<Bool?> {
    get {
      return graphQLMap["missedCares"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "missedCares")
    }
  }

  public var frequency: Swift.Optional<String?> {
    get {
      return graphQLMap["frequency"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "frequency")
    }
  }

  public var secondChance: Swift.Optional<Bool?> {
    get {
      return graphQLMap["secondChance"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "secondChance")
    }
  }

  public var secondChanceSendAfter: Swift.Optional<String?> {
    get {
      return graphQLMap["secondChanceSendAfter"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "secondChanceSendAfter")
    }
  }

  public var todayList: Swift.Optional<Bool?> {
    get {
      return graphQLMap["todayList"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "todayList")
    }
  }

  public var todayListSendAt: Swift.Optional<String?> {
    get {
      return graphQLMap["todayListSendAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "todayListSendAt")
    }
  }
}

public struct ProfileUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - fullName
  ///   - email
  ///   - primaryLanguageId
  ///   - timezone
  public init(fullName: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, primaryLanguageId: Swift.Optional<Int?> = nil, timezone: Swift.Optional<String?> = nil) {
    graphQLMap = ["fullName": fullName, "email": email, "primaryLanguageId": primaryLanguageId, "timezone": timezone]
  }

  public var fullName: Swift.Optional<String?> {
    get {
      return graphQLMap["fullName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fullName")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var primaryLanguageId: Swift.Optional<Int?> {
    get {
      return graphQLMap["primaryLanguageId"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "primaryLanguageId")
    }
  }

  public var timezone: Swift.Optional<String?> {
    get {
      return graphQLMap["timezone"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timezone")
    }
  }
}

public struct InputPagination: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - offset
  ///   - limit
  ///   - all
  public init(offset: Swift.Optional<Int?> = nil, limit: Swift.Optional<Int?> = nil, all: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["offset": offset, "limit": limit, "all": all]
  }

  public var offset: Swift.Optional<Int?> {
    get {
      return graphQLMap["offset"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "offset")
    }
  }

  public var limit: Swift.Optional<Int?> {
    get {
      return graphQLMap["limit"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }

  public var all: Swift.Optional<Bool?> {
    get {
      return graphQLMap["all"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "all")
    }
  }
}

public enum ClimateDeciduous: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climateDeciduousDeciduous
  case climateDeciduousEvergreen
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_DECIDUOUS_DECIDUOUS": self = .climateDeciduousDeciduous
      case "CLIMATE_DECIDUOUS_EVERGREEN": self = .climateDeciduousEvergreen
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateDeciduousDeciduous: return "CLIMATE_DECIDUOUS_DECIDUOUS"
      case .climateDeciduousEvergreen: return "CLIMATE_DECIDUOUS_EVERGREEN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateDeciduous, rhs: ClimateDeciduous) -> Bool {
    switch (lhs, rhs) {
      case (.climateDeciduousDeciduous, .climateDeciduousDeciduous): return true
      case (.climateDeciduousEvergreen, .climateDeciduousEvergreen): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateDeciduous] {
    return [
      .climateDeciduousDeciduous,
      .climateDeciduousEvergreen,
    ]
  }
}

public enum ClimateHabit: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climateHabitAnnualClimber
  case climateHabitAnnualPerennial
  case climateHabitBamboo
  case climateHabitBiennial
  case climateHabitBiennialPerennial
  case climateHabitBulb
  case climateHabitClimber
  case climateHabitFern
  case climateHabitPerennial
  case climateHabitPerennialClimber
  case climateHabitShrub
  case climateHabitTree
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_HABIT_ANNUAL_CLIMBER": self = .climateHabitAnnualClimber
      case "CLIMATE_HABIT_ANNUAL_PERENNIAL": self = .climateHabitAnnualPerennial
      case "CLIMATE_HABIT_BAMBOO": self = .climateHabitBamboo
      case "CLIMATE_HABIT_BIENNIAL": self = .climateHabitBiennial
      case "CLIMATE_HABIT_BIENNIAL_PERENNIAL": self = .climateHabitBiennialPerennial
      case "CLIMATE_HABIT_BULB": self = .climateHabitBulb
      case "CLIMATE_HABIT_CLIMBER": self = .climateHabitClimber
      case "CLIMATE_HABIT_FERN": self = .climateHabitFern
      case "CLIMATE_HABIT_PERENNIAL": self = .climateHabitPerennial
      case "CLIMATE_HABIT_PERENNIAL_CLIMBER": self = .climateHabitPerennialClimber
      case "CLIMATE_HABIT_SHRUB": self = .climateHabitShrub
      case "CLIMATE_HABIT_TREE": self = .climateHabitTree
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateHabitAnnualClimber: return "CLIMATE_HABIT_ANNUAL_CLIMBER"
      case .climateHabitAnnualPerennial: return "CLIMATE_HABIT_ANNUAL_PERENNIAL"
      case .climateHabitBamboo: return "CLIMATE_HABIT_BAMBOO"
      case .climateHabitBiennial: return "CLIMATE_HABIT_BIENNIAL"
      case .climateHabitBiennialPerennial: return "CLIMATE_HABIT_BIENNIAL_PERENNIAL"
      case .climateHabitBulb: return "CLIMATE_HABIT_BULB"
      case .climateHabitClimber: return "CLIMATE_HABIT_CLIMBER"
      case .climateHabitFern: return "CLIMATE_HABIT_FERN"
      case .climateHabitPerennial: return "CLIMATE_HABIT_PERENNIAL"
      case .climateHabitPerennialClimber: return "CLIMATE_HABIT_PERENNIAL_CLIMBER"
      case .climateHabitShrub: return "CLIMATE_HABIT_SHRUB"
      case .climateHabitTree: return "CLIMATE_HABIT_TREE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateHabit, rhs: ClimateHabit) -> Bool {
    switch (lhs, rhs) {
      case (.climateHabitAnnualClimber, .climateHabitAnnualClimber): return true
      case (.climateHabitAnnualPerennial, .climateHabitAnnualPerennial): return true
      case (.climateHabitBamboo, .climateHabitBamboo): return true
      case (.climateHabitBiennial, .climateHabitBiennial): return true
      case (.climateHabitBiennialPerennial, .climateHabitBiennialPerennial): return true
      case (.climateHabitBulb, .climateHabitBulb): return true
      case (.climateHabitClimber, .climateHabitClimber): return true
      case (.climateHabitFern, .climateHabitFern): return true
      case (.climateHabitPerennial, .climateHabitPerennial): return true
      case (.climateHabitPerennialClimber, .climateHabitPerennialClimber): return true
      case (.climateHabitShrub, .climateHabitShrub): return true
      case (.climateHabitTree, .climateHabitTree): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateHabit] {
    return [
      .climateHabitAnnualClimber,
      .climateHabitAnnualPerennial,
      .climateHabitBamboo,
      .climateHabitBiennial,
      .climateHabitBiennialPerennial,
      .climateHabitBulb,
      .climateHabitClimber,
      .climateHabitFern,
      .climateHabitPerennial,
      .climateHabitPerennialClimber,
      .climateHabitShrub,
      .climateHabitTree,
    ]
  }
}

public enum ClimateMoisture: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climateMoistureD
  case climateMoistureDm
  case climateMoistureDmw
  case climateMoistureDmwe
  case climateMoistureM
  case climateMoistureMwe
  case climateMoistureMweWa
  case climateMoistureWa
  case climateMoistureWem
  case climateMoistureWewa
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_MOISTURE_D": self = .climateMoistureD
      case "CLIMATE_MOISTURE_DM": self = .climateMoistureDm
      case "CLIMATE_MOISTURE_DMW": self = .climateMoistureDmw
      case "CLIMATE_MOISTURE_DMWE": self = .climateMoistureDmwe
      case "CLIMATE_MOISTURE_M": self = .climateMoistureM
      case "CLIMATE_MOISTURE_MWE": self = .climateMoistureMwe
      case "CLIMATE_MOISTURE_MWEWa": self = .climateMoistureMweWa
      case "CLIMATE_MOISTURE_WA": self = .climateMoistureWa
      case "CLIMATE_MOISTURE_WEM": self = .climateMoistureWem
      case "CLIMATE_MOISTURE_WEWA": self = .climateMoistureWewa
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateMoistureD: return "CLIMATE_MOISTURE_D"
      case .climateMoistureDm: return "CLIMATE_MOISTURE_DM"
      case .climateMoistureDmw: return "CLIMATE_MOISTURE_DMW"
      case .climateMoistureDmwe: return "CLIMATE_MOISTURE_DMWE"
      case .climateMoistureM: return "CLIMATE_MOISTURE_M"
      case .climateMoistureMwe: return "CLIMATE_MOISTURE_MWE"
      case .climateMoistureMweWa: return "CLIMATE_MOISTURE_MWEWa"
      case .climateMoistureWa: return "CLIMATE_MOISTURE_WA"
      case .climateMoistureWem: return "CLIMATE_MOISTURE_WEM"
      case .climateMoistureWewa: return "CLIMATE_MOISTURE_WEWA"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateMoisture, rhs: ClimateMoisture) -> Bool {
    switch (lhs, rhs) {
      case (.climateMoistureD, .climateMoistureD): return true
      case (.climateMoistureDm, .climateMoistureDm): return true
      case (.climateMoistureDmw, .climateMoistureDmw): return true
      case (.climateMoistureDmwe, .climateMoistureDmwe): return true
      case (.climateMoistureM, .climateMoistureM): return true
      case (.climateMoistureMwe, .climateMoistureMwe): return true
      case (.climateMoistureMweWa, .climateMoistureMweWa): return true
      case (.climateMoistureWa, .climateMoistureWa): return true
      case (.climateMoistureWem, .climateMoistureWem): return true
      case (.climateMoistureWewa, .climateMoistureWewa): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateMoisture] {
    return [
      .climateMoistureD,
      .climateMoistureDm,
      .climateMoistureDmw,
      .climateMoistureDmwe,
      .climateMoistureM,
      .climateMoistureMwe,
      .climateMoistureMweWa,
      .climateMoistureWa,
      .climateMoistureWem,
      .climateMoistureWewa,
    ]
  }
}

public enum ClimatePh: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climatePhA
  case climatePhAn
  case climatePhAnb
  case climatePhB
  case climatePhN
  case climatePhNb
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_PH_A": self = .climatePhA
      case "CLIMATE_PH_AN": self = .climatePhAn
      case "CLIMATE_PH_ANB": self = .climatePhAnb
      case "CLIMATE_PH_B": self = .climatePhB
      case "CLIMATE_PH_N": self = .climatePhN
      case "CLIMATE_PH_NB": self = .climatePhNb
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climatePhA: return "CLIMATE_PH_A"
      case .climatePhAn: return "CLIMATE_PH_AN"
      case .climatePhAnb: return "CLIMATE_PH_ANB"
      case .climatePhB: return "CLIMATE_PH_B"
      case .climatePhN: return "CLIMATE_PH_N"
      case .climatePhNb: return "CLIMATE_PH_NB"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimatePh, rhs: ClimatePh) -> Bool {
    switch (lhs, rhs) {
      case (.climatePhA, .climatePhA): return true
      case (.climatePhAn, .climatePhAn): return true
      case (.climatePhAnb, .climatePhAnb): return true
      case (.climatePhB, .climatePhB): return true
      case (.climatePhN, .climatePhN): return true
      case (.climatePhNb, .climatePhNb): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimatePh] {
    return [
      .climatePhA,
      .climatePhAn,
      .climatePhAnb,
      .climatePhB,
      .climatePhN,
      .climatePhNb,
    ]
  }
}

public enum ClimateShade: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climateShadeFs
  case climateShadeFsn
  case climateShadeN
  case climateShadeS
  case climateShadeSn
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_SHADE_FS": self = .climateShadeFs
      case "CLIMATE_SHADE_FSN": self = .climateShadeFsn
      case "CLIMATE_SHADE_N": self = .climateShadeN
      case "CLIMATE_SHADE_S": self = .climateShadeS
      case "CLIMATE_SHADE_SN": self = .climateShadeSn
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateShadeFs: return "CLIMATE_SHADE_FS"
      case .climateShadeFsn: return "CLIMATE_SHADE_FSN"
      case .climateShadeN: return "CLIMATE_SHADE_N"
      case .climateShadeS: return "CLIMATE_SHADE_S"
      case .climateShadeSn: return "CLIMATE_SHADE_SN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateShade, rhs: ClimateShade) -> Bool {
    switch (lhs, rhs) {
      case (.climateShadeFs, .climateShadeFs): return true
      case (.climateShadeFsn, .climateShadeFsn): return true
      case (.climateShadeN, .climateShadeN): return true
      case (.climateShadeS, .climateShadeS): return true
      case (.climateShadeSn, .climateShadeSn): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateShade] {
    return [
      .climateShadeFs,
      .climateShadeFsn,
      .climateShadeN,
      .climateShadeS,
      .climateShadeSn,
    ]
  }
}

public enum ClimateSoil: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climateSoilL
  case climateSoilLm
  case climateSoilLmh
  case climateSoilM
  case climateSoilMh
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_SOIL_L": self = .climateSoilL
      case "CLIMATE_SOIL_LM": self = .climateSoilLm
      case "CLIMATE_SOIL_LMH": self = .climateSoilLmh
      case "CLIMATE_SOIL_M": self = .climateSoilM
      case "CLIMATE_SOIL_MH": self = .climateSoilMh
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateSoilL: return "CLIMATE_SOIL_L"
      case .climateSoilLm: return "CLIMATE_SOIL_LM"
      case .climateSoilLmh: return "CLIMATE_SOIL_LMH"
      case .climateSoilM: return "CLIMATE_SOIL_M"
      case .climateSoilMh: return "CLIMATE_SOIL_MH"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateSoil, rhs: ClimateSoil) -> Bool {
    switch (lhs, rhs) {
      case (.climateSoilL, .climateSoilL): return true
      case (.climateSoilLm, .climateSoilLm): return true
      case (.climateSoilLmh, .climateSoilLmh): return true
      case (.climateSoilM, .climateSoilM): return true
      case (.climateSoilMh, .climateSoilMh): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateSoil] {
    return [
      .climateSoilL,
      .climateSoilLm,
      .climateSoilLmh,
      .climateSoilM,
      .climateSoilMh,
    ]
  }
}

public enum GardenPlantHistoryType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case gardenPlantHistoryTypeCare
  case gardenPlantHistoryTypeCaresToDefault
  case gardenPlantHistoryTypeChangeGardenPlantMainImage
  case gardenPlantHistoryTypeGalleryMediaDelete
  case gardenPlantHistoryTypeGalleryMediaUpdate
  case gardenPlantHistoryTypeGalleryMediaUpload
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "GARDEN_PLANT_HISTORY_TYPE_CARE": self = .gardenPlantHistoryTypeCare
      case "GARDEN_PLANT_HISTORY_TYPE_CARES_TO_DEFAULT": self = .gardenPlantHistoryTypeCaresToDefault
      case "GARDEN_PLANT_HISTORY_TYPE_CHANGE_GARDEN_PLANT_MAIN_IMAGE": self = .gardenPlantHistoryTypeChangeGardenPlantMainImage
      case "GARDEN_PLANT_HISTORY_TYPE_GALLERY_MEDIA_DELETE": self = .gardenPlantHistoryTypeGalleryMediaDelete
      case "GARDEN_PLANT_HISTORY_TYPE_GALLERY_MEDIA_UPDATE": self = .gardenPlantHistoryTypeGalleryMediaUpdate
      case "GARDEN_PLANT_HISTORY_TYPE_GALLERY_MEDIA_UPLOAD": self = .gardenPlantHistoryTypeGalleryMediaUpload
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .gardenPlantHistoryTypeCare: return "GARDEN_PLANT_HISTORY_TYPE_CARE"
      case .gardenPlantHistoryTypeCaresToDefault: return "GARDEN_PLANT_HISTORY_TYPE_CARES_TO_DEFAULT"
      case .gardenPlantHistoryTypeChangeGardenPlantMainImage: return "GARDEN_PLANT_HISTORY_TYPE_CHANGE_GARDEN_PLANT_MAIN_IMAGE"
      case .gardenPlantHistoryTypeGalleryMediaDelete: return "GARDEN_PLANT_HISTORY_TYPE_GALLERY_MEDIA_DELETE"
      case .gardenPlantHistoryTypeGalleryMediaUpdate: return "GARDEN_PLANT_HISTORY_TYPE_GALLERY_MEDIA_UPDATE"
      case .gardenPlantHistoryTypeGalleryMediaUpload: return "GARDEN_PLANT_HISTORY_TYPE_GALLERY_MEDIA_UPLOAD"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: GardenPlantHistoryType, rhs: GardenPlantHistoryType) -> Bool {
    switch (lhs, rhs) {
      case (.gardenPlantHistoryTypeCare, .gardenPlantHistoryTypeCare): return true
      case (.gardenPlantHistoryTypeCaresToDefault, .gardenPlantHistoryTypeCaresToDefault): return true
      case (.gardenPlantHistoryTypeChangeGardenPlantMainImage, .gardenPlantHistoryTypeChangeGardenPlantMainImage): return true
      case (.gardenPlantHistoryTypeGalleryMediaDelete, .gardenPlantHistoryTypeGalleryMediaDelete): return true
      case (.gardenPlantHistoryTypeGalleryMediaUpdate, .gardenPlantHistoryTypeGalleryMediaUpdate): return true
      case (.gardenPlantHistoryTypeGalleryMediaUpload, .gardenPlantHistoryTypeGalleryMediaUpload): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [GardenPlantHistoryType] {
    return [
      .gardenPlantHistoryTypeCare,
      .gardenPlantHistoryTypeCaresToDefault,
      .gardenPlantHistoryTypeChangeGardenPlantMainImage,
      .gardenPlantHistoryTypeGalleryMediaDelete,
      .gardenPlantHistoryTypeGalleryMediaUpdate,
      .gardenPlantHistoryTypeGalleryMediaUpload,
    ]
  }
}

public enum SaleType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case saleTypeCombo
  case saleTypeComboFull
  case saleTypeLifetime_50
  case saleTypeLongWeek
  case saleTypeLongYear
  case saleTypeMonthly
  case saleTypeShortWeek
  case saleTypeShortYear
  case saleTypeWeekly
  case saleTypeYearly
  case saleTypeYearly_50
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "SALE_TYPE_COMBO": self = .saleTypeCombo
      case "SALE_TYPE_COMBO_FULL": self = .saleTypeComboFull
      case "SALE_TYPE_LIFETIME_50": self = .saleTypeLifetime_50
      case "SALE_TYPE_LONG_WEEK": self = .saleTypeLongWeek
      case "SALE_TYPE_LONG_YEAR": self = .saleTypeLongYear
      case "SALE_TYPE_MONTHLY": self = .saleTypeMonthly
      case "SALE_TYPE_SHORT_WEEK": self = .saleTypeShortWeek
      case "SALE_TYPE_SHORT_YEAR": self = .saleTypeShortYear
      case "SALE_TYPE_WEEKLY": self = .saleTypeWeekly
      case "SALE_TYPE_YEARLY": self = .saleTypeYearly
      case "SALE_TYPE_YEARLY_50": self = .saleTypeYearly_50
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .saleTypeCombo: return "SALE_TYPE_COMBO"
      case .saleTypeComboFull: return "SALE_TYPE_COMBO_FULL"
      case .saleTypeLifetime_50: return "SALE_TYPE_LIFETIME_50"
      case .saleTypeLongWeek: return "SALE_TYPE_LONG_WEEK"
      case .saleTypeLongYear: return "SALE_TYPE_LONG_YEAR"
      case .saleTypeMonthly: return "SALE_TYPE_MONTHLY"
      case .saleTypeShortWeek: return "SALE_TYPE_SHORT_WEEK"
      case .saleTypeShortYear: return "SALE_TYPE_SHORT_YEAR"
      case .saleTypeWeekly: return "SALE_TYPE_WEEKLY"
      case .saleTypeYearly: return "SALE_TYPE_YEARLY"
      case .saleTypeYearly_50: return "SALE_TYPE_YEARLY_50"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: SaleType, rhs: SaleType) -> Bool {
    switch (lhs, rhs) {
      case (.saleTypeCombo, .saleTypeCombo): return true
      case (.saleTypeComboFull, .saleTypeComboFull): return true
      case (.saleTypeLifetime_50, .saleTypeLifetime_50): return true
      case (.saleTypeLongWeek, .saleTypeLongWeek): return true
      case (.saleTypeLongYear, .saleTypeLongYear): return true
      case (.saleTypeMonthly, .saleTypeMonthly): return true
      case (.saleTypeShortWeek, .saleTypeShortWeek): return true
      case (.saleTypeShortYear, .saleTypeShortYear): return true
      case (.saleTypeWeekly, .saleTypeWeekly): return true
      case (.saleTypeYearly, .saleTypeYearly): return true
      case (.saleTypeYearly_50, .saleTypeYearly_50): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [SaleType] {
    return [
      .saleTypeCombo,
      .saleTypeComboFull,
      .saleTypeLifetime_50,
      .saleTypeLongWeek,
      .saleTypeLongYear,
      .saleTypeMonthly,
      .saleTypeShortWeek,
      .saleTypeShortYear,
      .saleTypeWeekly,
      .saleTypeYearly,
      .saleTypeYearly_50,
    ]
  }
}

public final class AddImageToGalleryMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddImageToGallery($gardenPlantId: String!, $mediaId: String!) {
      addImageToGallery(gardenPlantId: $gardenPlantId, mediaId: $mediaId)
    }
    """

  public let operationName: String = "AddImageToGallery"

  public var gardenPlantId: String
  public var mediaId: String

  public init(gardenPlantId: String, mediaId: String) {
    self.gardenPlantId = gardenPlantId
    self.mediaId = mediaId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId, "mediaId": mediaId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addImageToGallery", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId"), "mediaId": GraphQLVariable("mediaId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addImageToGallery: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addImageToGallery": addImageToGallery])
    }

    public var addImageToGallery: Bool? {
      get {
        return resultMap["addImageToGallery"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "addImageToGallery")
      }
    }
  }
}

public final class DoneAllCaresByGardenMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DoneAllCaresByGarden($gardenId: String!, $careTypeId: Int) {
      doneAllCaresByGarden(gardenId: $gardenId, careTypeId: $careTypeId)
    }
    """

  public let operationName: String = "DoneAllCaresByGarden"

  public var gardenId: String
  public var careTypeId: Int?

  public init(gardenId: String, careTypeId: Int? = nil) {
    self.gardenId = gardenId
    self.careTypeId = careTypeId
  }

  public var variables: GraphQLMap? {
    return ["gardenId": gardenId, "careTypeId": careTypeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("doneAllCaresByGarden", arguments: ["gardenId": GraphQLVariable("gardenId"), "careTypeId": GraphQLVariable("careTypeId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(doneAllCaresByGarden: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "doneAllCaresByGarden": doneAllCaresByGarden])
    }

    public var doneAllCaresByGarden: Bool? {
      get {
        return resultMap["doneAllCaresByGarden"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "doneAllCaresByGarden")
      }
    }
  }
}

public final class DoneAllCaresByGardenPlantMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DoneAllCaresByGardenPlant($gardenPlantId: String!) {
      doneAllCaresByGardenPlant(gardenPlantId: $gardenPlantId)
    }
    """

  public let operationName: String = "DoneAllCaresByGardenPlant"

  public var gardenPlantId: String

  public init(gardenPlantId: String) {
    self.gardenPlantId = gardenPlantId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("doneAllCaresByGardenPlant", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(doneAllCaresByGardenPlant: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "doneAllCaresByGardenPlant": doneAllCaresByGardenPlant])
    }

    public var doneAllCaresByGardenPlant: Bool? {
      get {
        return resultMap["doneAllCaresByGardenPlant"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "doneAllCaresByGardenPlant")
      }
    }
  }
}

public final class DoneAllCaresByGardensMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DoneAllCaresByGardens($gardenIds: [String!], $careTypeId: Int) {
      doneAllCaresByGardens(gardenIds: $gardenIds, careTypeId: $careTypeId)
    }
    """

  public let operationName: String = "DoneAllCaresByGardens"

  public var gardenIds: [String]?
  public var careTypeId: Int?

  public init(gardenIds: [String]?, careTypeId: Int? = nil) {
    self.gardenIds = gardenIds
    self.careTypeId = careTypeId
  }

  public var variables: GraphQLMap? {
    return ["gardenIds": gardenIds, "careTypeId": careTypeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("doneAllCaresByGardens", arguments: ["gardenIds": GraphQLVariable("gardenIds"), "careTypeId": GraphQLVariable("careTypeId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(doneAllCaresByGardens: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "doneAllCaresByGardens": doneAllCaresByGardens])
    }

    public var doneAllCaresByGardens: Bool? {
      get {
        return resultMap["doneAllCaresByGardens"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "doneAllCaresByGardens")
      }
    }
  }
}

public final class DoneCareByGardenPlantMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DoneCareByGardenPlant($gardenPlantId: String!, $careTypeId: Int!) {
      doneCareByGardenPlant(gardenPlantId: $gardenPlantId, careTypeId: $careTypeId)
    }
    """

  public let operationName: String = "DoneCareByGardenPlant"

  public var gardenPlantId: String
  public var careTypeId: Int

  public init(gardenPlantId: String, careTypeId: Int) {
    self.gardenPlantId = gardenPlantId
    self.careTypeId = careTypeId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId, "careTypeId": careTypeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("doneCareByGardenPlant", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId"), "careTypeId": GraphQLVariable("careTypeId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(doneCareByGardenPlant: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "doneCareByGardenPlant": doneCareByGardenPlant])
    }

    public var doneCareByGardenPlant: Bool? {
      get {
        return resultMap["doneCareByGardenPlant"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "doneCareByGardenPlant")
      }
    }
  }
}

public final class DoneCareByGardenPlantsMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DoneCareByGardenPlants($gardenPlantIds: [String!]!, $careTypeId: Int!) {
      doneCareByGardenPlants(gardenPlantIds: $gardenPlantIds, careTypeId: $careTypeId)
    }
    """

  public let operationName: String = "DoneCareByGardenPlants"

  public var gardenPlantIds: [String]
  public var careTypeId: Int

  public init(gardenPlantIds: [String], careTypeId: Int) {
    self.gardenPlantIds = gardenPlantIds
    self.careTypeId = careTypeId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantIds": gardenPlantIds, "careTypeId": careTypeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("doneCareByGardenPlants", arguments: ["gardenPlantIds": GraphQLVariable("gardenPlantIds"), "careTypeId": GraphQLVariable("careTypeId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(doneCareByGardenPlants: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "doneCareByGardenPlants": doneCareByGardenPlants])
    }

    public var doneCareByGardenPlants: Bool? {
      get {
        return resultMap["doneCareByGardenPlants"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "doneCareByGardenPlants")
      }
    }
  }
}

public final class GalleryImageDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GalleryImageDelete($id: String!) {
      galleryImageDelete(id: $id)
    }
    """

  public let operationName: String = "GalleryImageDelete"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("galleryImageDelete", arguments: ["id": GraphQLVariable("id")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(galleryImageDelete: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "galleryImageDelete": galleryImageDelete])
    }

    public var galleryImageDelete: Bool? {
      get {
        return resultMap["galleryImageDelete"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "galleryImageDelete")
      }
    }
  }
}

public final class GardenCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenCreate($record: GardenCreateInput!) {
      gardenCreate(record: $record) {
        __typename
        id
        name
        userMainImage {
          __typename
          id
          urlIosFull
          urlIosPrev
        }
        isDefault
        totalPlants
        needCareCount
        isHappy
      }
    }
    """

  public let operationName: String = "GardenCreate"

  public var record: GardenCreateInput

  public init(record: GardenCreateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenCreate", arguments: ["record": GraphQLVariable("record")], type: .object(GardenCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenCreate: GardenCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenCreate": gardenCreate.flatMap { (value: GardenCreate) -> ResultMap in value.resultMap }])
    }

    public var gardenCreate: GardenCreate? {
      get {
        return (resultMap["gardenCreate"] as? ResultMap).flatMap { GardenCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenCreate")
      }
    }

    public struct GardenCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Garden"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
          GraphQLField("isDefault", type: .scalar(Bool.self)),
          GraphQLField("totalPlants", type: .scalar(Int.self)),
          GraphQLField("needCareCount", type: .scalar(Int.self)),
          GraphQLField("isHappy", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, userMainImage: UserMainImage? = nil, isDefault: Bool? = nil, totalPlants: Int? = nil, needCareCount: Int? = nil, isHappy: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "isDefault": isDefault, "totalPlants": totalPlants, "needCareCount": needCareCount, "isHappy": isHappy])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var userMainImage: UserMainImage? {
        get {
          return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
        }
      }

      public var isDefault: Bool? {
        get {
          return resultMap["isDefault"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDefault")
        }
      }

      public var totalPlants: Int? {
        get {
          return resultMap["totalPlants"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPlants")
        }
      }

      public var needCareCount: Int? {
        get {
          return resultMap["needCareCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "needCareCount")
        }
      }

      public var isHappy: Bool? {
        get {
          return resultMap["isHappy"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isHappy")
        }
      }

      public struct UserMainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosFull", type: .scalar(String.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosFull: String? {
          get {
            return resultMap["urlIosFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }
    }
  }
}

public final class GardenDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenDelete($id: String!) {
      gardenDelete(id: $id)
    }
    """

  public let operationName: String = "GardenDelete"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenDelete", arguments: ["id": GraphQLVariable("id")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenDelete: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenDelete": gardenDelete])
    }

    public var gardenDelete: Bool? {
      get {
        return resultMap["gardenDelete"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "gardenDelete")
      }
    }
  }
}

public final class GardenPlantCareCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantCareCreate($record: GardenPlantCareCreateInput!) {
      gardenPlantCareCreate(record: $record) {
        __typename
        id
        name
        count
        period
        sendNotificationAt
        isActive
        nextDate
        status
        CareType {
          __typename
          id
          name
        }
      }
    }
    """

  public let operationName: String = "GardenPlantCareCreate"

  public var record: GardenPlantCareCreateInput

  public init(record: GardenPlantCareCreateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCareCreate", arguments: ["record": GraphQLVariable("record")], type: .object(GardenPlantCareCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCareCreate: GardenPlantCareCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantCareCreate": gardenPlantCareCreate.flatMap { (value: GardenPlantCareCreate) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantCareCreate: GardenPlantCareCreate? {
      get {
        return (resultMap["gardenPlantCareCreate"] as? ResultMap).flatMap { GardenPlantCareCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantCareCreate")
      }
    }

    public struct GardenPlantCareCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlantCare"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("count", type: .scalar(Int.self)),
          GraphQLField("period", type: .scalar(PeriodType.self)),
          GraphQLField("sendNotificationAt", type: .scalar(String.self)),
          GraphQLField("isActive", type: .scalar(Bool.self)),
          GraphQLField("nextDate", type: .scalar(String.self)),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("CareType", type: .object(CareType.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, count: Int? = nil, period: PeriodType? = nil, sendNotificationAt: String? = nil, isActive: Bool? = nil, nextDate: String? = nil, status: String? = nil, careType: CareType? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlantCare", "id": id, "name": name, "count": count, "period": period, "sendNotificationAt": sendNotificationAt, "isActive": isActive, "nextDate": nextDate, "status": status, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var count: Int? {
        get {
          return resultMap["count"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "count")
        }
      }

      public var period: PeriodType? {
        get {
          return resultMap["period"] as? PeriodType
        }
        set {
          resultMap.updateValue(newValue, forKey: "period")
        }
      }

      public var sendNotificationAt: String? {
        get {
          return resultMap["sendNotificationAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sendNotificationAt")
        }
      }

      public var isActive: Bool? {
        get {
          return resultMap["isActive"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isActive")
        }
      }

      public var nextDate: String? {
        get {
          return resultMap["nextDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nextDate")
        }
      }

      public var status: String? {
        get {
          return resultMap["status"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var careType: CareType? {
        get {
          return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
        }
      }

      public struct CareType: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CareType"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class GardenPlantCareDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantCareDelete($id: String!) {
      gardenPlantCareDelete(id: $id)
    }
    """

  public let operationName: String = "GardenPlantCareDelete"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCareDelete", arguments: ["id": GraphQLVariable("id")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCareDelete: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantCareDelete": gardenPlantCareDelete])
    }

    public var gardenPlantCareDelete: Bool? {
      get {
        return resultMap["gardenPlantCareDelete"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "gardenPlantCareDelete")
      }
    }
  }
}

public final class GardenPlantCaresDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantCaresDelete($ids: [String!]) {
      gardenPlantCaresDelete(ids: $ids)
    }
    """

  public let operationName: String = "GardenPlantCaresDelete"

  public var ids: [String]?

  public init(ids: [String]?) {
    self.ids = ids
  }

  public var variables: GraphQLMap? {
    return ["ids": ids]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCaresDelete", arguments: ["ids": GraphQLVariable("ids")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCaresDelete: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantCaresDelete": gardenPlantCaresDelete])
    }

    public var gardenPlantCaresDelete: Bool? {
      get {
        return resultMap["gardenPlantCaresDelete"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "gardenPlantCaresDelete")
      }
    }
  }
}

public final class GardenPlantCaresToDefaultMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantCaresToDefault($gardenPlantId: String!) {
      gardenPlantCaresToDefault(gardenPlantId: $gardenPlantId)
    }
    """

  public let operationName: String = "GardenPlantCaresToDefault"

  public var gardenPlantId: String

  public init(gardenPlantId: String) {
    self.gardenPlantId = gardenPlantId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCaresToDefault", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCaresToDefault: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantCaresToDefault": gardenPlantCaresToDefault])
    }

    public var gardenPlantCaresToDefault: Bool? {
      get {
        return resultMap["gardenPlantCaresToDefault"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "gardenPlantCaresToDefault")
      }
    }
  }
}

public final class GardenPlantCareUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantCareUpdate($record: GardenPlantCareUpdateInput!) {
      gardenPlantCareUpdate(record: $record) {
        __typename
        id
        count
        period
        sendNotificationAt
        isActive
        nextDate
        CareType {
          __typename
          id
          name
        }
      }
    }
    """

  public let operationName: String = "GardenPlantCareUpdate"

  public var record: GardenPlantCareUpdateInput

  public init(record: GardenPlantCareUpdateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCareUpdate", arguments: ["record": GraphQLVariable("record")], type: .object(GardenPlantCareUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCareUpdate: GardenPlantCareUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantCareUpdate": gardenPlantCareUpdate.flatMap { (value: GardenPlantCareUpdate) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantCareUpdate: GardenPlantCareUpdate? {
      get {
        return (resultMap["gardenPlantCareUpdate"] as? ResultMap).flatMap { GardenPlantCareUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantCareUpdate")
      }
    }

    public struct GardenPlantCareUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlantCare"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("count", type: .scalar(Int.self)),
          GraphQLField("period", type: .scalar(PeriodType.self)),
          GraphQLField("sendNotificationAt", type: .scalar(String.self)),
          GraphQLField("isActive", type: .scalar(Bool.self)),
          GraphQLField("nextDate", type: .scalar(String.self)),
          GraphQLField("CareType", type: .object(CareType.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, count: Int? = nil, period: PeriodType? = nil, sendNotificationAt: String? = nil, isActive: Bool? = nil, nextDate: String? = nil, careType: CareType? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlantCare", "id": id, "count": count, "period": period, "sendNotificationAt": sendNotificationAt, "isActive": isActive, "nextDate": nextDate, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var count: Int? {
        get {
          return resultMap["count"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "count")
        }
      }

      public var period: PeriodType? {
        get {
          return resultMap["period"] as? PeriodType
        }
        set {
          resultMap.updateValue(newValue, forKey: "period")
        }
      }

      public var sendNotificationAt: String? {
        get {
          return resultMap["sendNotificationAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sendNotificationAt")
        }
      }

      public var isActive: Bool? {
        get {
          return resultMap["isActive"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isActive")
        }
      }

      public var nextDate: String? {
        get {
          return resultMap["nextDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nextDate")
        }
      }

      public var careType: CareType? {
        get {
          return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
        }
      }

      public struct CareType: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CareType"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class GardenPlantCloneMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantClone($gardenPlantId: String!, $name: String!, $gardenId: String) {
      gardenPlantClone(
        gardenPlantId: $gardenPlantId
        name: $name
        gardenId: $gardenId
      ) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "GardenPlantClone"

  public var gardenPlantId: String
  public var name: String
  public var gardenId: String?

  public init(gardenPlantId: String, name: String, gardenId: String? = nil) {
    self.gardenPlantId = gardenPlantId
    self.name = name
    self.gardenId = gardenId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId, "name": name, "gardenId": gardenId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantClone", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId"), "name": GraphQLVariable("name"), "gardenId": GraphQLVariable("gardenId")], type: .object(GardenPlantClone.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantClone: GardenPlantClone? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantClone": gardenPlantClone.flatMap { (value: GardenPlantClone) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantClone: GardenPlantClone? {
      get {
        return (resultMap["gardenPlantClone"] as? ResultMap).flatMap { GardenPlantClone(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantClone")
      }
    }

    public struct GardenPlantClone: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class GardenPlantCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantCreate($record: GardenPlantCreateRecordInput!) {
      gardenPlantCreate(record: $record) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "GardenPlantCreate"

  public var record: GardenPlantCreateRecordInput

  public init(record: GardenPlantCreateRecordInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCreate", arguments: ["record": GraphQLVariable("record")], type: .object(GardenPlantCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCreate: GardenPlantCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantCreate": gardenPlantCreate.flatMap { (value: GardenPlantCreate) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantCreate: GardenPlantCreate? {
      get {
        return (resultMap["gardenPlantCreate"] as? ResultMap).flatMap { GardenPlantCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantCreate")
      }
    }

    public struct GardenPlantCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class GardenPlantDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantDelete($id: String!) {
      gardenPlantDelete(id: $id)
    }
    """

  public let operationName: String = "GardenPlantDelete"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantDelete", arguments: ["id": GraphQLVariable("id")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantDelete: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantDelete": gardenPlantDelete])
    }

    public var gardenPlantDelete: Bool? {
      get {
        return resultMap["gardenPlantDelete"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "gardenPlantDelete")
      }
    }
  }
}

public final class GardenPlantUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenPlantUpdate($record: GardenPlantUpdateInput!) {
      gardenPlantUpdate(record: $record) {
        __typename
        id
        userMainImage {
          __typename
          id
          urlIosFull
          urlIosPrev
        }
      }
    }
    """

  public let operationName: String = "GardenPlantUpdate"

  public var record: GardenPlantUpdateInput

  public init(record: GardenPlantUpdateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantUpdate", arguments: ["record": GraphQLVariable("record")], type: .object(GardenPlantUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantUpdate: GardenPlantUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenPlantUpdate": gardenPlantUpdate.flatMap { (value: GardenPlantUpdate) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantUpdate: GardenPlantUpdate? {
      get {
        return (resultMap["gardenPlantUpdate"] as? ResultMap).flatMap { GardenPlantUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantUpdate")
      }
    }

    public struct GardenPlantUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, userMainImage: UserMainImage? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var userMainImage: UserMainImage? {
        get {
          return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
        }
      }

      public struct UserMainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosFull", type: .scalar(String.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosFull: String? {
          get {
            return resultMap["urlIosFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }
    }
  }
}

public final class GardenUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GardenUpdate($record: GardenUpdateInput!) {
      gardenUpdate(record: $record) {
        __typename
        id
        name
        userMainImage {
          __typename
          id
          urlIosFull
          urlIosPrev
        }
        isDefault
        totalPlants
        needCareCount
        isHappy
      }
    }
    """

  public let operationName: String = "GardenUpdate"

  public var record: GardenUpdateInput

  public init(record: GardenUpdateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenUpdate", arguments: ["record": GraphQLVariable("record")], type: .object(GardenUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenUpdate: GardenUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "gardenUpdate": gardenUpdate.flatMap { (value: GardenUpdate) -> ResultMap in value.resultMap }])
    }

    public var gardenUpdate: GardenUpdate? {
      get {
        return (resultMap["gardenUpdate"] as? ResultMap).flatMap { GardenUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenUpdate")
      }
    }

    public struct GardenUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Garden"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
          GraphQLField("isDefault", type: .scalar(Bool.self)),
          GraphQLField("totalPlants", type: .scalar(Int.self)),
          GraphQLField("needCareCount", type: .scalar(Int.self)),
          GraphQLField("isHappy", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, userMainImage: UserMainImage? = nil, isDefault: Bool? = nil, totalPlants: Int? = nil, needCareCount: Int? = nil, isHappy: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "isDefault": isDefault, "totalPlants": totalPlants, "needCareCount": needCareCount, "isHappy": isHappy])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var userMainImage: UserMainImage? {
        get {
          return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
        }
      }

      public var isDefault: Bool? {
        get {
          return resultMap["isDefault"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDefault")
        }
      }

      public var totalPlants: Int? {
        get {
          return resultMap["totalPlants"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPlants")
        }
      }

      public var needCareCount: Int? {
        get {
          return resultMap["needCareCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "needCareCount")
        }
      }

      public var isHappy: Bool? {
        get {
          return resultMap["isHappy"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isHappy")
        }
      }

      public struct UserMainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosFull", type: .scalar(String.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosFull: String? {
          get {
            return resultMap["urlIosFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }
    }
  }
}

public final class GeneratePromoOfferMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GeneratePromoOffer($record: GeneratePromoOfferRecordInput!) {
      generatePromoOffer(record: $record) {
        __typename
        keyID
        nonce
        timestamp
        signature
        applicationUsername
      }
    }
    """

  public let operationName: String = "GeneratePromoOffer"

  public var record: GeneratePromoOfferRecordInput

  public init(record: GeneratePromoOfferRecordInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("generatePromoOffer", arguments: ["record": GraphQLVariable("record")], type: .object(GeneratePromoOffer.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(generatePromoOffer: GeneratePromoOffer? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "generatePromoOffer": generatePromoOffer.flatMap { (value: GeneratePromoOffer) -> ResultMap in value.resultMap }])
    }

    public var generatePromoOffer: GeneratePromoOffer? {
      get {
        return (resultMap["generatePromoOffer"] as? ResultMap).flatMap { GeneratePromoOffer(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "generatePromoOffer")
      }
    }

    public struct GeneratePromoOffer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PromoOffer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("keyID", type: .scalar(String.self)),
          GraphQLField("nonce", type: .scalar(String.self)),
          GraphQLField("timestamp", type: .scalar(String.self)),
          GraphQLField("signature", type: .scalar(String.self)),
          GraphQLField("applicationUsername", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(keyId: String? = nil, nonce: String? = nil, timestamp: String? = nil, signature: String? = nil, applicationUsername: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PromoOffer", "keyID": keyId, "nonce": nonce, "timestamp": timestamp, "signature": signature, "applicationUsername": applicationUsername])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var keyId: String? {
        get {
          return resultMap["keyID"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "keyID")
        }
      }

      public var nonce: String? {
        get {
          return resultMap["nonce"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nonce")
        }
      }

      public var timestamp: String? {
        get {
          return resultMap["timestamp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var signature: String? {
        get {
          return resultMap["signature"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signature")
        }
      }

      public var applicationUsername: String? {
        get {
          return resultMap["applicationUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "applicationUsername")
        }
      }
    }
  }
}

public final class NotificationSettingsUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation NotificationSettingsUpdate($record: NotificationSettingsUpdateInput!) {
      notificationSettingsUpdate(record: $record) {
        __typename
        cares
        waitingCares
        missedCares
        frequency {
          __typename
          hours
          minutes
          seconds
        }
        secondChance
        secondChanceSendAfter {
          __typename
          hours
          minutes
          seconds
        }
        todayList
        todayListSendAt
      }
    }
    """

  public let operationName: String = "NotificationSettingsUpdate"

  public var record: NotificationSettingsUpdateInput

  public init(record: NotificationSettingsUpdateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("notificationSettingsUpdate", arguments: ["record": GraphQLVariable("record")], type: .object(NotificationSettingsUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(notificationSettingsUpdate: NotificationSettingsUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "notificationSettingsUpdate": notificationSettingsUpdate.flatMap { (value: NotificationSettingsUpdate) -> ResultMap in value.resultMap }])
    }

    public var notificationSettingsUpdate: NotificationSettingsUpdate? {
      get {
        return (resultMap["notificationSettingsUpdate"] as? ResultMap).flatMap { NotificationSettingsUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "notificationSettingsUpdate")
      }
    }

    public struct NotificationSettingsUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["NotificationSettings"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cares", type: .scalar(Bool.self)),
          GraphQLField("waitingCares", type: .scalar(Bool.self)),
          GraphQLField("missedCares", type: .scalar(Bool.self)),
          GraphQLField("frequency", type: .object(Frequency.selections)),
          GraphQLField("secondChance", type: .scalar(Bool.self)),
          GraphQLField("secondChanceSendAfter", type: .object(SecondChanceSendAfter.selections)),
          GraphQLField("todayList", type: .scalar(Bool.self)),
          GraphQLField("todayListSendAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(cares: Bool? = nil, waitingCares: Bool? = nil, missedCares: Bool? = nil, frequency: Frequency? = nil, secondChance: Bool? = nil, secondChanceSendAfter: SecondChanceSendAfter? = nil, todayList: Bool? = nil, todayListSendAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "NotificationSettings", "cares": cares, "waitingCares": waitingCares, "missedCares": missedCares, "frequency": frequency.flatMap { (value: Frequency) -> ResultMap in value.resultMap }, "secondChance": secondChance, "secondChanceSendAfter": secondChanceSendAfter.flatMap { (value: SecondChanceSendAfter) -> ResultMap in value.resultMap }, "todayList": todayList, "todayListSendAt": todayListSendAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cares: Bool? {
        get {
          return resultMap["cares"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "cares")
        }
      }

      public var waitingCares: Bool? {
        get {
          return resultMap["waitingCares"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "waitingCares")
        }
      }

      public var missedCares: Bool? {
        get {
          return resultMap["missedCares"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "missedCares")
        }
      }

      public var frequency: Frequency? {
        get {
          return (resultMap["frequency"] as? ResultMap).flatMap { Frequency(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "frequency")
        }
      }

      public var secondChance: Bool? {
        get {
          return resultMap["secondChance"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "secondChance")
        }
      }

      public var secondChanceSendAfter: SecondChanceSendAfter? {
        get {
          return (resultMap["secondChanceSendAfter"] as? ResultMap).flatMap { SecondChanceSendAfter(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "secondChanceSendAfter")
        }
      }

      public var todayList: Bool? {
        get {
          return resultMap["todayList"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "todayList")
        }
      }

      public var todayListSendAt: String? {
        get {
          return resultMap["todayListSendAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "todayListSendAt")
        }
      }

      public struct Frequency: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IntervalRepresentation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hours", type: .scalar(Int.self)),
            GraphQLField("minutes", type: .scalar(Int.self)),
            GraphQLField("seconds", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(hours: Int? = nil, minutes: Int? = nil, seconds: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "IntervalRepresentation", "hours": hours, "minutes": minutes, "seconds": seconds])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var hours: Int? {
          get {
            return resultMap["hours"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "hours")
          }
        }

        public var minutes: Int? {
          get {
            return resultMap["minutes"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "minutes")
          }
        }

        public var seconds: Int? {
          get {
            return resultMap["seconds"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "seconds")
          }
        }
      }

      public struct SecondChanceSendAfter: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IntervalRepresentation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hours", type: .scalar(Int.self)),
            GraphQLField("minutes", type: .scalar(Int.self)),
            GraphQLField("seconds", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(hours: Int? = nil, minutes: Int? = nil, seconds: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "IntervalRepresentation", "hours": hours, "minutes": minutes, "seconds": seconds])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var hours: Int? {
          get {
            return resultMap["hours"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "hours")
          }
        }

        public var minutes: Int? {
          get {
            return resultMap["minutes"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "minutes")
          }
        }

        public var seconds: Int? {
          get {
            return resultMap["seconds"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "seconds")
          }
        }
      }
    }
  }
}

public final class PlantToGardenMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation PlantToGarden($plantId: String!, $gardenId: String!) {
      plantToGarden(plantId: $plantId, gardenId: $gardenId) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "PlantToGarden"

  public var plantId: String
  public var gardenId: String

  public init(plantId: String, gardenId: String) {
    self.plantId = plantId
    self.gardenId = gardenId
  }

  public var variables: GraphQLMap? {
    return ["plantId": plantId, "gardenId": gardenId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("plantToGarden", arguments: ["plantId": GraphQLVariable("plantId"), "gardenId": GraphQLVariable("gardenId")], type: .object(PlantToGarden.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(plantToGarden: PlantToGarden? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "plantToGarden": plantToGarden.flatMap { (value: PlantToGarden) -> ResultMap in value.resultMap }])
    }

    public var plantToGarden: PlantToGarden? {
      get {
        return (resultMap["plantToGarden"] as? ResultMap).flatMap { PlantToGarden(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "plantToGarden")
      }
    }

    public struct PlantToGarden: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class ProfileDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ProfileDelete {
      profileDelete
    }
    """

  public let operationName: String = "ProfileDelete"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("profileDelete", type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(profileDelete: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "profileDelete": profileDelete])
    }

    public var profileDelete: Bool? {
      get {
        return resultMap["profileDelete"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "profileDelete")
      }
    }
  }
}

public final class ProfileUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ProfileUpdate($record: ProfileUpdateInput!) {
      profileUpdate(record: $record) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "ProfileUpdate"

  public var record: ProfileUpdateInput

  public init(record: ProfileUpdateInput) {
    self.record = record
  }

  public var variables: GraphQLMap? {
    return ["record": record]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("profileUpdate", arguments: ["record": GraphQLVariable("record")], type: .object(ProfileUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(profileUpdate: ProfileUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "profileUpdate": profileUpdate.flatMap { (value: ProfileUpdate) -> ResultMap in value.resultMap }])
    }

    public var profileUpdate: ProfileUpdate? {
      get {
        return (resultMap["profileUpdate"] as? ResultMap).flatMap { ProfileUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "profileUpdate")
      }
    }

    public struct ProfileUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MeModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "MeModel", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class ReportDiagnoseMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ReportDiagnose($diagnoseId: String!) {
      reportDiagnose(diagnoseId: $diagnoseId)
    }
    """

  public let operationName: String = "ReportDiagnose"

  public var diagnoseId: String

  public init(diagnoseId: String) {
    self.diagnoseId = diagnoseId
  }

  public var variables: GraphQLMap? {
    return ["diagnoseId": diagnoseId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("reportDiagnose", arguments: ["diagnoseId": GraphQLVariable("diagnoseId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(reportDiagnose: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "reportDiagnose": reportDiagnose])
    }

    public var reportDiagnose: Bool? {
      get {
        return resultMap["reportDiagnose"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "reportDiagnose")
      }
    }
  }
}

public final class ReportRecognizeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ReportRecognize($recognizeId: String!) {
      reportRecognize(recognizeId: $recognizeId)
    }
    """

  public let operationName: String = "ReportRecognize"

  public var recognizeId: String

  public init(recognizeId: String) {
    self.recognizeId = recognizeId
  }

  public var variables: GraphQLMap? {
    return ["recognizeId": recognizeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("reportRecognize", arguments: ["recognizeId": GraphQLVariable("recognizeId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(reportRecognize: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "reportRecognize": reportRecognize])
    }

    public var reportRecognize: Bool? {
      get {
        return resultMap["reportRecognize"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "reportRecognize")
      }
    }
  }
}

public final class SaveUdidMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SaveUdid($udid: String!) {
      saveUdid(udid: $udid)
    }
    """

  public let operationName: String = "SaveUdid"

  public var udid: String

  public init(udid: String) {
    self.udid = udid
  }

  public var variables: GraphQLMap? {
    return ["udid": udid]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("saveUdid", arguments: ["udid": GraphQLVariable("udid")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(saveUdid: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "saveUdid": saveUdid])
    }

    public var saveUdid: Bool? {
      get {
        return resultMap["saveUdid"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "saveUdid")
      }
    }
  }
}

public final class OrderCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation OrderCreate($receipt: String!) {
      orderCreate(receipt: $receipt)
    }
    """

  public let operationName: String = "OrderCreate"

  public var receipt: String

  public init(receipt: String) {
    self.receipt = receipt
  }

  public var variables: GraphQLMap? {
    return ["receipt": receipt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("orderCreate", arguments: ["receipt": GraphQLVariable("receipt")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(orderCreate: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "orderCreate": orderCreate])
    }

    public var orderCreate: Bool? {
      get {
        return resultMap["orderCreate"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "orderCreate")
      }
    }
  }
}

public final class SetFavoritePlantByIdMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SetFavoritePlantById($id: String!, $isFavorite: Boolean!) {
      setFavoritePlantById(id: $id, isFavorite: $isFavorite)
    }
    """

  public let operationName: String = "SetFavoritePlantById"

  public var id: String
  public var isFavorite: Bool

  public init(id: String, isFavorite: Bool) {
    self.id = id
    self.isFavorite = isFavorite
  }

  public var variables: GraphQLMap? {
    return ["id": id, "isFavorite": isFavorite]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("setFavoritePlantById", arguments: ["id": GraphQLVariable("id"), "isFavorite": GraphQLVariable("isFavorite")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(setFavoritePlantById: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "setFavoritePlantById": setFavoritePlantById])
    }

    public var setFavoritePlantById: Bool? {
      get {
        return resultMap["setFavoritePlantById"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "setFavoritePlantById")
      }
    }
  }
}

public final class SetGardenPlantNotificationsMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SetGardenPlantNotifications($gardenPlantId: String!, $sendNotifications: Boolean!) {
      setGardenPlantNotifications(
        gardenPlantId: $gardenPlantId
        sendNotifications: $sendNotifications
      )
    }
    """

  public let operationName: String = "SetGardenPlantNotifications"

  public var gardenPlantId: String
  public var sendNotifications: Bool

  public init(gardenPlantId: String, sendNotifications: Bool) {
    self.gardenPlantId = gardenPlantId
    self.sendNotifications = sendNotifications
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId, "sendNotifications": sendNotifications]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("setGardenPlantNotifications", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId"), "sendNotifications": GraphQLVariable("sendNotifications")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(setGardenPlantNotifications: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "setGardenPlantNotifications": setGardenPlantNotifications])
    }

    public var setGardenPlantNotifications: Bool? {
      get {
        return resultMap["setGardenPlantNotifications"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "setGardenPlantNotifications")
      }
    }
  }
}

public final class UpdateMediaNotesMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateMediaNotes($mediaId: String!, $notes: String!) {
      updateMediaNotes(mediaId: $mediaId, notes: $notes) {
        __typename
        id
        urlIosFull
        urlIosPrev
        notes
      }
    }
    """

  public let operationName: String = "UpdateMediaNotes"

  public var mediaId: String
  public var notes: String

  public init(mediaId: String, notes: String) {
    self.mediaId = mediaId
    self.notes = notes
  }

  public var variables: GraphQLMap? {
    return ["mediaId": mediaId, "notes": notes]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateMediaNotes", arguments: ["mediaId": GraphQLVariable("mediaId"), "notes": GraphQLVariable("notes")], type: .object(UpdateMediaNote.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateMediaNotes: UpdateMediaNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateMediaNotes": updateMediaNotes.flatMap { (value: UpdateMediaNote) -> ResultMap in value.resultMap }])
    }

    public var updateMediaNotes: UpdateMediaNote? {
      get {
        return (resultMap["updateMediaNotes"] as? ResultMap).flatMap { UpdateMediaNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateMediaNotes")
      }
    }

    public struct UpdateMediaNote: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("urlIosFull", type: .scalar(String.self)),
          GraphQLField("urlIosPrev", type: .scalar(String.self)),
          GraphQLField("notes", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil, notes: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev, "notes": notes])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var urlIosFull: String? {
        get {
          return resultMap["urlIosFull"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosFull")
        }
      }

      public var urlIosPrev: String? {
        get {
          return resultMap["urlIosPrev"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosPrev")
        }
      }

      public var notes: String? {
        get {
          return resultMap["notes"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "notes")
        }
      }
    }
  }
}

public final class CaresByGardenQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CaresByGarden($gardenId: String!) {
      caresByGarden(gardenId: $gardenId) {
        __typename
        careCount
        CareType {
          __typename
          id
          name
        }
      }
    }
    """

  public let operationName: String = "CaresByGarden"

  public var gardenId: String

  public init(gardenId: String) {
    self.gardenId = gardenId
  }

  public var variables: GraphQLMap? {
    return ["gardenId": gardenId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("caresByGarden", arguments: ["gardenId": GraphQLVariable("gardenId")], type: .list(.object(CaresByGarden.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(caresByGarden: [CaresByGarden?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "caresByGarden": caresByGarden.flatMap { (value: [CaresByGarden?]) -> [ResultMap?] in value.map { (value: CaresByGarden?) -> ResultMap? in value.flatMap { (value: CaresByGarden) -> ResultMap in value.resultMap } } }])
    }

    public var caresByGarden: [CaresByGarden?]? {
      get {
        return (resultMap["caresByGarden"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [CaresByGarden?] in value.map { (value: ResultMap?) -> CaresByGarden? in value.flatMap { (value: ResultMap) -> CaresByGarden in CaresByGarden(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [CaresByGarden?]) -> [ResultMap?] in value.map { (value: CaresByGarden?) -> ResultMap? in value.flatMap { (value: CaresByGarden) -> ResultMap in value.resultMap } } }, forKey: "caresByGarden")
      }
    }

    public struct CaresByGarden: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CareMeta"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("careCount", type: .scalar(Int.self)),
          GraphQLField("CareType", type: .object(CareType.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(careCount: Int? = nil, careType: CareType? = nil) {
        self.init(unsafeResultMap: ["__typename": "CareMeta", "careCount": careCount, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var careCount: Int? {
        get {
          return resultMap["careCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "careCount")
        }
      }

      public var careType: CareType? {
        get {
          return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
        }
      }

      public struct CareType: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CareType"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class CaresByGardensQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CaresByGardens {
      caresByGardens {
        __typename
        careCount
        CareType {
          __typename
          id
          name
        }
      }
    }
    """

  public let operationName: String = "CaresByGardens"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("caresByGardens", type: .list(.object(CaresByGarden.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(caresByGardens: [CaresByGarden?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "caresByGardens": caresByGardens.flatMap { (value: [CaresByGarden?]) -> [ResultMap?] in value.map { (value: CaresByGarden?) -> ResultMap? in value.flatMap { (value: CaresByGarden) -> ResultMap in value.resultMap } } }])
    }

    public var caresByGardens: [CaresByGarden?]? {
      get {
        return (resultMap["caresByGardens"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [CaresByGarden?] in value.map { (value: ResultMap?) -> CaresByGarden? in value.flatMap { (value: ResultMap) -> CaresByGarden in CaresByGarden(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [CaresByGarden?]) -> [ResultMap?] in value.map { (value: CaresByGarden?) -> ResultMap? in value.flatMap { (value: CaresByGarden) -> ResultMap in value.resultMap } } }, forKey: "caresByGardens")
      }
    }

    public struct CaresByGarden: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CareMeta"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("careCount", type: .scalar(Int.self)),
          GraphQLField("CareType", type: .object(CareType.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(careCount: Int? = nil, careType: CareType? = nil) {
        self.init(unsafeResultMap: ["__typename": "CareMeta", "careCount": careCount, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var careCount: Int? {
        get {
          return resultMap["careCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "careCount")
        }
      }

      public var careType: CareType? {
        get {
          return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
        }
      }

      public struct CareType: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CareType"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class CareTypesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CareTypes {
      careTypes {
        __typename
        id
        name
      }
    }
    """

  public let operationName: String = "CareTypes"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("careTypes", type: .list(.object(CareType.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(careTypes: [CareType?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "careTypes": careTypes.flatMap { (value: [CareType?]) -> [ResultMap?] in value.map { (value: CareType?) -> ResultMap? in value.flatMap { (value: CareType) -> ResultMap in value.resultMap } } }])
    }

    public var careTypes: [CareType?]? {
      get {
        return (resultMap["careTypes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [CareType?] in value.map { (value: ResultMap?) -> CareType? in value.flatMap { (value: ResultMap) -> CareType in CareType(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [CareType?]) -> [ResultMap?] in value.map { (value: CareType?) -> ResultMap? in value.flatMap { (value: CareType) -> ResultMap in value.resultMap } } }, forKey: "careTypes")
      }
    }

    public struct CareType: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CareType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class DiagnoseArhiveQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query DiagnoseArhive($pagination: InputPagination!) {
      diagnoseArhive(pagination: $pagination) {
        __typename
        pagination {
          __typename
          limit
          nextPageExist
          offset
          prevPageExist
          totalPages
        }
        plant {
          __typename
          diagnoseDescription
          diagnoseTitle
          plant {
            __typename
            PlantCares {
              __typename
              count
              id
              period
              CareType {
                __typename
                id
                name
              }
            }
            Climate {
              __typename
              deciduous
              habit
              hardiness
              height
              moisture
              ph
              shade
              soil
            }
            descriptionFull
            descriptionWikiHtml
            id
            isFavourite
            latinName
            plantImages {
              __typename
              id
              urlIosFull
              urlIosPrev
            }
            names
            wikiUrl
          }
        }
      }
    }
    """

  public let operationName: String = "DiagnoseArhive"

  public var pagination: InputPagination

  public init(pagination: InputPagination) {
    self.pagination = pagination
  }

  public var variables: GraphQLMap? {
    return ["pagination": pagination]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("diagnoseArhive", arguments: ["pagination": GraphQLVariable("pagination")], type: .object(DiagnoseArhive.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(diagnoseArhive: DiagnoseArhive? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "diagnoseArhive": diagnoseArhive.flatMap { (value: DiagnoseArhive) -> ResultMap in value.resultMap }])
    }

    public var diagnoseArhive: DiagnoseArhive? {
      get {
        return (resultMap["diagnoseArhive"] as? ResultMap).flatMap { DiagnoseArhive(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "diagnoseArhive")
      }
    }

    public struct DiagnoseArhive: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiagnoseArchive"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pagination", type: .object(Pagination.selections)),
          GraphQLField("plant", type: .list(.object(Plant.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination? = nil, plant: [Plant?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "DiagnoseArchive", "pagination": pagination.flatMap { (value: Pagination) -> ResultMap in value.resultMap }, "plant": plant.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pagination: Pagination? {
        get {
          return (resultMap["pagination"] as? ResultMap).flatMap { Pagination(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pagination")
        }
      }

      public var plant: [Plant?]? {
        get {
          return (resultMap["plant"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Plant?] in value.map { (value: ResultMap?) -> Plant? in value.flatMap { (value: ResultMap) -> Plant in Plant(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }, forKey: "plant")
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Pagination"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("limit", type: .scalar(Int.self)),
            GraphQLField("nextPageExist", type: .scalar(Bool.self)),
            GraphQLField("offset", type: .scalar(Int.self)),
            GraphQLField("prevPageExist", type: .scalar(Bool.self)),
            GraphQLField("totalPages", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(limit: Int? = nil, nextPageExist: Bool? = nil, offset: Int? = nil, prevPageExist: Bool? = nil, totalPages: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "limit": limit, "nextPageExist": nextPageExist, "offset": offset, "prevPageExist": prevPageExist, "totalPages": totalPages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var limit: Int? {
          get {
            return resultMap["limit"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "limit")
          }
        }

        public var nextPageExist: Bool? {
          get {
            return resultMap["nextPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextPageExist")
          }
        }

        public var offset: Int? {
          get {
            return resultMap["offset"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "offset")
          }
        }

        public var prevPageExist: Bool? {
          get {
            return resultMap["prevPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "prevPageExist")
          }
        }

        public var totalPages: Int? {
          get {
            return resultMap["totalPages"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPages")
          }
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiagnoseModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("diagnoseDescription", type: .scalar(String.self)),
            GraphQLField("diagnoseTitle", type: .scalar(String.self)),
            GraphQLField("plant", type: .object(Plant.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(diagnoseDescription: String? = nil, diagnoseTitle: String? = nil, plant: Plant? = nil) {
          self.init(unsafeResultMap: ["__typename": "DiagnoseModel", "diagnoseDescription": diagnoseDescription, "diagnoseTitle": diagnoseTitle, "plant": plant.flatMap { (value: Plant) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var diagnoseDescription: String? {
          get {
            return resultMap["diagnoseDescription"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnoseDescription")
          }
        }

        public var diagnoseTitle: String? {
          get {
            return resultMap["diagnoseTitle"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnoseTitle")
          }
        }

        public var plant: Plant? {
          get {
            return (resultMap["plant"] as? ResultMap).flatMap { Plant(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "plant")
          }
        }

        public struct Plant: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Plant"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("PlantCares", type: .list(.object(PlantCare.selections))),
              GraphQLField("Climate", type: .object(Climate.selections)),
              GraphQLField("descriptionFull", type: .scalar(String.self)),
              GraphQLField("descriptionWikiHtml", type: .scalar(String.self)),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("isFavourite", type: .scalar(Bool.self)),
              GraphQLField("latinName", type: .scalar(String.self)),
              GraphQLField("plantImages", type: .list(.object(PlantImage.selections))),
              GraphQLField("names", type: .scalar(String.self)),
              GraphQLField("wikiUrl", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(plantCares: [PlantCare?]? = nil, climate: Climate? = nil, descriptionFull: String? = nil, descriptionWikiHtml: String? = nil, id: GraphQLID? = nil, isFavourite: Bool? = nil, latinName: String? = nil, plantImages: [PlantImage?]? = nil, names: String? = nil, wikiUrl: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Plant", "PlantCares": plantCares.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, "Climate": climate.flatMap { (value: Climate) -> ResultMap in value.resultMap }, "descriptionFull": descriptionFull, "descriptionWikiHtml": descriptionWikiHtml, "id": id, "isFavourite": isFavourite, "latinName": latinName, "plantImages": plantImages.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, "names": names, "wikiUrl": wikiUrl])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var plantCares: [PlantCare?]? {
            get {
              return (resultMap["PlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantCare?] in value.map { (value: ResultMap?) -> PlantCare? in value.flatMap { (value: ResultMap) -> PlantCare in PlantCare(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, forKey: "PlantCares")
            }
          }

          public var climate: Climate? {
            get {
              return (resultMap["Climate"] as? ResultMap).flatMap { Climate(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "Climate")
            }
          }

          public var descriptionFull: String? {
            get {
              return resultMap["descriptionFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "descriptionFull")
            }
          }

          public var descriptionWikiHtml: String? {
            get {
              return resultMap["descriptionWikiHtml"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "descriptionWikiHtml")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var isFavourite: Bool? {
            get {
              return resultMap["isFavourite"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isFavourite")
            }
          }

          public var latinName: String? {
            get {
              return resultMap["latinName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "latinName")
            }
          }

          public var plantImages: [PlantImage?]? {
            get {
              return (resultMap["plantImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantImage?] in value.map { (value: ResultMap?) -> PlantImage? in value.flatMap { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, forKey: "plantImages")
            }
          }

          public var names: String? {
            get {
              return resultMap["names"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "names")
            }
          }

          public var wikiUrl: String? {
            get {
              return resultMap["wikiUrl"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "wikiUrl")
            }
          }

          public struct PlantCare: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["PlantCare"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("count", type: .scalar(Int.self)),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("period", type: .scalar(PeriodType.self)),
                GraphQLField("CareType", type: .object(CareType.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(count: Int? = nil, id: GraphQLID? = nil, period: PeriodType? = nil, careType: CareType? = nil) {
              self.init(unsafeResultMap: ["__typename": "PlantCare", "count": count, "id": id, "period": period, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var count: Int? {
              get {
                return resultMap["count"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "count")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var period: PeriodType? {
              get {
                return resultMap["period"] as? PeriodType
              }
              set {
                resultMap.updateValue(newValue, forKey: "period")
              }
            }

            public var careType: CareType? {
              get {
                return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
              }
            }

            public struct CareType: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CareType"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(GraphQLID.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: GraphQLID? = nil, name: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: GraphQLID? {
                get {
                  return resultMap["id"] as? GraphQLID
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              public var name: String? {
                get {
                  return resultMap["name"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }
            }
          }

          public struct Climate: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Climate"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("deciduous", type: .scalar(ClimateDeciduous.self)),
                GraphQLField("habit", type: .scalar(ClimateHabit.self)),
                GraphQLField("hardiness", type: .scalar(Int.self)),
                GraphQLField("height", type: .scalar(Int.self)),
                GraphQLField("moisture", type: .scalar(ClimateMoisture.self)),
                GraphQLField("ph", type: .scalar(ClimatePh.self)),
                GraphQLField("shade", type: .scalar(ClimateShade.self)),
                GraphQLField("soil", type: .scalar(ClimateSoil.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(deciduous: ClimateDeciduous? = nil, habit: ClimateHabit? = nil, hardiness: Int? = nil, height: Int? = nil, moisture: ClimateMoisture? = nil, ph: ClimatePh? = nil, shade: ClimateShade? = nil, soil: ClimateSoil? = nil) {
              self.init(unsafeResultMap: ["__typename": "Climate", "deciduous": deciduous, "habit": habit, "hardiness": hardiness, "height": height, "moisture": moisture, "ph": ph, "shade": shade, "soil": soil])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var deciduous: ClimateDeciduous? {
              get {
                return resultMap["deciduous"] as? ClimateDeciduous
              }
              set {
                resultMap.updateValue(newValue, forKey: "deciduous")
              }
            }

            public var habit: ClimateHabit? {
              get {
                return resultMap["habit"] as? ClimateHabit
              }
              set {
                resultMap.updateValue(newValue, forKey: "habit")
              }
            }

            public var hardiness: Int? {
              get {
                return resultMap["hardiness"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "hardiness")
              }
            }

            public var height: Int? {
              get {
                return resultMap["height"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "height")
              }
            }

            public var moisture: ClimateMoisture? {
              get {
                return resultMap["moisture"] as? ClimateMoisture
              }
              set {
                resultMap.updateValue(newValue, forKey: "moisture")
              }
            }

            public var ph: ClimatePh? {
              get {
                return resultMap["ph"] as? ClimatePh
              }
              set {
                resultMap.updateValue(newValue, forKey: "ph")
              }
            }

            public var shade: ClimateShade? {
              get {
                return resultMap["shade"] as? ClimateShade
              }
              set {
                resultMap.updateValue(newValue, forKey: "shade")
              }
            }

            public var soil: ClimateSoil? {
              get {
                return resultMap["soil"] as? ClimateSoil
              }
              set {
                resultMap.updateValue(newValue, forKey: "soil")
              }
            }
          }

          public struct PlantImage: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("urlIosFull", type: .scalar(String.self)),
                GraphQLField("urlIosPrev", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var urlIosFull: String? {
              get {
                return resultMap["urlIosFull"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosFull")
              }
            }

            public var urlIosPrev: String? {
              get {
                return resultMap["urlIosPrev"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosPrev")
              }
            }
          }
        }
      }
    }
  }
}

public final class GalleryImagesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GalleryImages($gardenPlantId: String!) {
      galleryImages(gardenPlantId: $gardenPlantId) {
        __typename
        id
        urlIosFull
        urlIosPrev
        notes
        createdAt
      }
    }
    """

  public let operationName: String = "GalleryImages"

  public var gardenPlantId: String

  public init(gardenPlantId: String) {
    self.gardenPlantId = gardenPlantId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("galleryImages", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId")], type: .list(.object(GalleryImage.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(galleryImages: [GalleryImage?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "galleryImages": galleryImages.flatMap { (value: [GalleryImage?]) -> [ResultMap?] in value.map { (value: GalleryImage?) -> ResultMap? in value.flatMap { (value: GalleryImage) -> ResultMap in value.resultMap } } }])
    }

    public var galleryImages: [GalleryImage?]? {
      get {
        return (resultMap["galleryImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GalleryImage?] in value.map { (value: ResultMap?) -> GalleryImage? in value.flatMap { (value: ResultMap) -> GalleryImage in GalleryImage(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [GalleryImage?]) -> [ResultMap?] in value.map { (value: GalleryImage?) -> ResultMap? in value.flatMap { (value: GalleryImage) -> ResultMap in value.resultMap } } }, forKey: "galleryImages")
      }
    }

    public struct GalleryImage: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("urlIosFull", type: .scalar(String.self)),
          GraphQLField("urlIosPrev", type: .scalar(String.self)),
          GraphQLField("notes", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil, notes: String? = nil, createdAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev, "notes": notes, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var urlIosFull: String? {
        get {
          return resultMap["urlIosFull"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosFull")
        }
      }

      public var urlIosPrev: String? {
        get {
          return resultMap["urlIosPrev"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosPrev")
        }
      }

      public var notes: String? {
        get {
          return resultMap["notes"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "notes")
        }
      }

      public var createdAt: String? {
        get {
          return resultMap["createdAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class GardenByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenById($id: String!) {
      gardenById(id: $id) {
        __typename
        id
        name
        userMainImage {
          __typename
          id
          urlIosFull
          urlIosPrev
        }
        isDefault
        totalPlants
        needCareCount
      }
    }
    """

  public let operationName: String = "GardenById"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenById", arguments: ["id": GraphQLVariable("id")], type: .object(GardenById.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenById: GardenById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardenById": gardenById.flatMap { (value: GardenById) -> ResultMap in value.resultMap }])
    }

    public var gardenById: GardenById? {
      get {
        return (resultMap["gardenById"] as? ResultMap).flatMap { GardenById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenById")
      }
    }

    public struct GardenById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Garden"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
          GraphQLField("isDefault", type: .scalar(Bool.self)),
          GraphQLField("totalPlants", type: .scalar(Int.self)),
          GraphQLField("needCareCount", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, userMainImage: UserMainImage? = nil, isDefault: Bool? = nil, totalPlants: Int? = nil, needCareCount: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "isDefault": isDefault, "totalPlants": totalPlants, "needCareCount": needCareCount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var userMainImage: UserMainImage? {
        get {
          return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
        }
      }

      public var isDefault: Bool? {
        get {
          return resultMap["isDefault"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDefault")
        }
      }

      public var totalPlants: Int? {
        get {
          return resultMap["totalPlants"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPlants")
        }
      }

      public var needCareCount: Int? {
        get {
          return resultMap["needCareCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "needCareCount")
        }
      }

      public struct UserMainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosFull", type: .scalar(String.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosFull: String? {
          get {
            return resultMap["urlIosFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }
    }
  }
}

public final class GardenPlantByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenPlantById($id: String!, $withoutFutureCares: Boolean) {
      gardenPlantById(id: $id, withoutFutureCares: $withoutFutureCares) {
        __typename
        id
        name
        userDescription
        sendNotifications
        userMainImage {
          __typename
          id
          urlIosFull
          urlIosPrev
        }
        Garden {
          __typename
          id
          name
        }
        GardenPlantCares {
          __typename
          id
          name
          count
          period
          nextDate
          status
          CareType {
            __typename
            id
            name
          }
        }
        Plant {
          __typename
          PlantCares {
            __typename
            count
            id
            period
            CareType {
              __typename
              id
              name
            }
          }
          Climate {
            __typename
            deciduous
            habit
            hardiness
            height
            moisture
            ph
            shade
            soil
          }
          descriptionFull
          descriptionWikiHtml
          id
          isFavourite
          latinName
          plantImages {
            __typename
            id
            urlIosFull
            urlIosPrev
          }
          names
          wikiUrl
        }
      }
    }
    """

  public let operationName: String = "GardenPlantById"

  public var id: String
  public var withoutFutureCares: Bool?

  public init(id: String, withoutFutureCares: Bool? = nil) {
    self.id = id
    self.withoutFutureCares = withoutFutureCares
  }

  public var variables: GraphQLMap? {
    return ["id": id, "withoutFutureCares": withoutFutureCares]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantById", arguments: ["id": GraphQLVariable("id"), "withoutFutureCares": GraphQLVariable("withoutFutureCares")], type: .object(GardenPlantById.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantById: GardenPlantById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardenPlantById": gardenPlantById.flatMap { (value: GardenPlantById) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantById: GardenPlantById? {
      get {
        return (resultMap["gardenPlantById"] as? ResultMap).flatMap { GardenPlantById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantById")
      }
    }

    public struct GardenPlantById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("userDescription", type: .scalar(String.self)),
          GraphQLField("sendNotifications", type: .scalar(Bool.self)),
          GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
          GraphQLField("Garden", type: .object(Garden.selections)),
          GraphQLField("GardenPlantCares", type: .list(.object(GardenPlantCare.selections))),
          GraphQLField("Plant", type: .object(Plant.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, userDescription: String? = nil, sendNotifications: Bool? = nil, userMainImage: UserMainImage? = nil, garden: Garden? = nil, gardenPlantCares: [GardenPlantCare?]? = nil, plant: Plant? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id, "name": name, "userDescription": userDescription, "sendNotifications": sendNotifications, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "Garden": garden.flatMap { (value: Garden) -> ResultMap in value.resultMap }, "GardenPlantCares": gardenPlantCares.flatMap { (value: [GardenPlantCare?]) -> [ResultMap?] in value.map { (value: GardenPlantCare?) -> ResultMap? in value.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap } } }, "Plant": plant.flatMap { (value: Plant) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var userDescription: String? {
        get {
          return resultMap["userDescription"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userDescription")
        }
      }

      public var sendNotifications: Bool? {
        get {
          return resultMap["sendNotifications"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "sendNotifications")
        }
      }

      public var userMainImage: UserMainImage? {
        get {
          return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
        }
      }

      public var garden: Garden? {
        get {
          return (resultMap["Garden"] as? ResultMap).flatMap { Garden(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Garden")
        }
      }

      public var gardenPlantCares: [GardenPlantCare?]? {
        get {
          return (resultMap["GardenPlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GardenPlantCare?] in value.map { (value: ResultMap?) -> GardenPlantCare? in value.flatMap { (value: ResultMap) -> GardenPlantCare in GardenPlantCare(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [GardenPlantCare?]) -> [ResultMap?] in value.map { (value: GardenPlantCare?) -> ResultMap? in value.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap } } }, forKey: "GardenPlantCares")
        }
      }

      public var plant: Plant? {
        get {
          return (resultMap["Plant"] as? ResultMap).flatMap { Plant(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Plant")
        }
      }

      public struct UserMainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosFull", type: .scalar(String.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosFull: String? {
          get {
            return resultMap["urlIosFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }

      public struct Garden: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Garden"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct GardenPlantCare: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GardenPlantCare"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("count", type: .scalar(Int.self)),
            GraphQLField("period", type: .scalar(PeriodType.self)),
            GraphQLField("nextDate", type: .scalar(String.self)),
            GraphQLField("status", type: .scalar(String.self)),
            GraphQLField("CareType", type: .object(CareType.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, count: Int? = nil, period: PeriodType? = nil, nextDate: String? = nil, status: String? = nil, careType: CareType? = nil) {
          self.init(unsafeResultMap: ["__typename": "GardenPlantCare", "id": id, "name": name, "count": count, "period": period, "nextDate": nextDate, "status": status, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var count: Int? {
          get {
            return resultMap["count"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "count")
          }
        }

        public var period: PeriodType? {
          get {
            return resultMap["period"] as? PeriodType
          }
          set {
            resultMap.updateValue(newValue, forKey: "period")
          }
        }

        public var nextDate: String? {
          get {
            return resultMap["nextDate"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextDate")
          }
        }

        public var status: String? {
          get {
            return resultMap["status"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        public var careType: CareType? {
          get {
            return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
          }
        }

        public struct CareType: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CareType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Plant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("PlantCares", type: .list(.object(PlantCare.selections))),
            GraphQLField("Climate", type: .object(Climate.selections)),
            GraphQLField("descriptionFull", type: .scalar(String.self)),
            GraphQLField("descriptionWikiHtml", type: .scalar(String.self)),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("isFavourite", type: .scalar(Bool.self)),
            GraphQLField("latinName", type: .scalar(String.self)),
            GraphQLField("plantImages", type: .list(.object(PlantImage.selections))),
            GraphQLField("names", type: .scalar(String.self)),
            GraphQLField("wikiUrl", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(plantCares: [PlantCare?]? = nil, climate: Climate? = nil, descriptionFull: String? = nil, descriptionWikiHtml: String? = nil, id: GraphQLID? = nil, isFavourite: Bool? = nil, latinName: String? = nil, plantImages: [PlantImage?]? = nil, names: String? = nil, wikiUrl: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Plant", "PlantCares": plantCares.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, "Climate": climate.flatMap { (value: Climate) -> ResultMap in value.resultMap }, "descriptionFull": descriptionFull, "descriptionWikiHtml": descriptionWikiHtml, "id": id, "isFavourite": isFavourite, "latinName": latinName, "plantImages": plantImages.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, "names": names, "wikiUrl": wikiUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var plantCares: [PlantCare?]? {
          get {
            return (resultMap["PlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantCare?] in value.map { (value: ResultMap?) -> PlantCare? in value.flatMap { (value: ResultMap) -> PlantCare in PlantCare(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, forKey: "PlantCares")
          }
        }

        public var climate: Climate? {
          get {
            return (resultMap["Climate"] as? ResultMap).flatMap { Climate(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "Climate")
          }
        }

        public var descriptionFull: String? {
          get {
            return resultMap["descriptionFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionFull")
          }
        }

        public var descriptionWikiHtml: String? {
          get {
            return resultMap["descriptionWikiHtml"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionWikiHtml")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var isFavourite: Bool? {
          get {
            return resultMap["isFavourite"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isFavourite")
          }
        }

        public var latinName: String? {
          get {
            return resultMap["latinName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "latinName")
          }
        }

        public var plantImages: [PlantImage?]? {
          get {
            return (resultMap["plantImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantImage?] in value.map { (value: ResultMap?) -> PlantImage? in value.flatMap { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, forKey: "plantImages")
          }
        }

        public var names: String? {
          get {
            return resultMap["names"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "names")
          }
        }

        public var wikiUrl: String? {
          get {
            return resultMap["wikiUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "wikiUrl")
          }
        }

        public struct PlantCare: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantCare"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .scalar(Int.self)),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("period", type: .scalar(PeriodType.self)),
              GraphQLField("CareType", type: .object(CareType.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(count: Int? = nil, id: GraphQLID? = nil, period: PeriodType? = nil, careType: CareType? = nil) {
            self.init(unsafeResultMap: ["__typename": "PlantCare", "count": count, "id": id, "period": period, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var count: Int? {
            get {
              return resultMap["count"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "count")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var period: PeriodType? {
            get {
              return resultMap["period"] as? PeriodType
            }
            set {
              resultMap.updateValue(newValue, forKey: "period")
            }
          }

          public var careType: CareType? {
            get {
              return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
            }
          }

          public struct CareType: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CareType"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }

        public struct Climate: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Climate"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("deciduous", type: .scalar(ClimateDeciduous.self)),
              GraphQLField("habit", type: .scalar(ClimateHabit.self)),
              GraphQLField("hardiness", type: .scalar(Int.self)),
              GraphQLField("height", type: .scalar(Int.self)),
              GraphQLField("moisture", type: .scalar(ClimateMoisture.self)),
              GraphQLField("ph", type: .scalar(ClimatePh.self)),
              GraphQLField("shade", type: .scalar(ClimateShade.self)),
              GraphQLField("soil", type: .scalar(ClimateSoil.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(deciduous: ClimateDeciduous? = nil, habit: ClimateHabit? = nil, hardiness: Int? = nil, height: Int? = nil, moisture: ClimateMoisture? = nil, ph: ClimatePh? = nil, shade: ClimateShade? = nil, soil: ClimateSoil? = nil) {
            self.init(unsafeResultMap: ["__typename": "Climate", "deciduous": deciduous, "habit": habit, "hardiness": hardiness, "height": height, "moisture": moisture, "ph": ph, "shade": shade, "soil": soil])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var deciduous: ClimateDeciduous? {
            get {
              return resultMap["deciduous"] as? ClimateDeciduous
            }
            set {
              resultMap.updateValue(newValue, forKey: "deciduous")
            }
          }

          public var habit: ClimateHabit? {
            get {
              return resultMap["habit"] as? ClimateHabit
            }
            set {
              resultMap.updateValue(newValue, forKey: "habit")
            }
          }

          public var hardiness: Int? {
            get {
              return resultMap["hardiness"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "hardiness")
            }
          }

          public var height: Int? {
            get {
              return resultMap["height"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "height")
            }
          }

          public var moisture: ClimateMoisture? {
            get {
              return resultMap["moisture"] as? ClimateMoisture
            }
            set {
              resultMap.updateValue(newValue, forKey: "moisture")
            }
          }

          public var ph: ClimatePh? {
            get {
              return resultMap["ph"] as? ClimatePh
            }
            set {
              resultMap.updateValue(newValue, forKey: "ph")
            }
          }

          public var shade: ClimateShade? {
            get {
              return resultMap["shade"] as? ClimateShade
            }
            set {
              resultMap.updateValue(newValue, forKey: "shade")
            }
          }

          public var soil: ClimateSoil? {
            get {
              return resultMap["soil"] as? ClimateSoil
            }
            set {
              resultMap.updateValue(newValue, forKey: "soil")
            }
          }
        }

        public struct PlantImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }
        }
      }
    }
  }
}

public final class GardenPlantByIdsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenPlantByIds($ids: [String!]) {
      gardenPlantByIds(ids: $ids) {
        __typename
        id
        name
        userMainImage {
          __typename
          id
          urlIosPrev
        }
      }
    }
    """

  public let operationName: String = "GardenPlantByIds"

  public var ids: [String]?

  public init(ids: [String]?) {
    self.ids = ids
  }

  public var variables: GraphQLMap? {
    return ["ids": ids]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantByIds", arguments: ["ids": GraphQLVariable("ids")], type: .list(.object(GardenPlantById.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantByIds: [GardenPlantById?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardenPlantByIds": gardenPlantByIds.flatMap { (value: [GardenPlantById?]) -> [ResultMap?] in value.map { (value: GardenPlantById?) -> ResultMap? in value.flatMap { (value: GardenPlantById) -> ResultMap in value.resultMap } } }])
    }

    public var gardenPlantByIds: [GardenPlantById?]? {
      get {
        return (resultMap["gardenPlantByIds"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GardenPlantById?] in value.map { (value: ResultMap?) -> GardenPlantById? in value.flatMap { (value: ResultMap) -> GardenPlantById in GardenPlantById(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [GardenPlantById?]) -> [ResultMap?] in value.map { (value: GardenPlantById?) -> ResultMap? in value.flatMap { (value: GardenPlantById) -> ResultMap in value.resultMap } } }, forKey: "gardenPlantByIds")
      }
    }

    public struct GardenPlantById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, userMainImage: UserMainImage? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id, "name": name, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var userMainImage: UserMainImage? {
        get {
          return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
        }
      }

      public struct UserMainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }
    }
  }
}

public final class GardenPlantCaresQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenPlantCares($gardenPlantId: String!) {
      gardenPlantCares(gardenPlantId: $gardenPlantId) {
        __typename
        cares {
          __typename
          id
          name
          count
          period
          sendNotificationAt
          isActive
          nextDate
          CareType {
            __typename
            id
            name
          }
        }
        caresToDefaultButton
      }
    }
    """

  public let operationName: String = "GardenPlantCares"

  public var gardenPlantId: String

  public init(gardenPlantId: String) {
    self.gardenPlantId = gardenPlantId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantCares", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId")], type: .object(GardenPlantCare.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantCares: GardenPlantCare? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardenPlantCares": gardenPlantCares.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantCares: GardenPlantCare? {
      get {
        return (resultMap["gardenPlantCares"] as? ResultMap).flatMap { GardenPlantCare(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantCares")
      }
    }

    public struct GardenPlantCare: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlantCaresResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cares", type: .list(.object(Care.selections))),
          GraphQLField("caresToDefaultButton", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(cares: [Care?]? = nil, caresToDefaultButton: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlantCaresResponse", "cares": cares.flatMap { (value: [Care?]) -> [ResultMap?] in value.map { (value: Care?) -> ResultMap? in value.flatMap { (value: Care) -> ResultMap in value.resultMap } } }, "caresToDefaultButton": caresToDefaultButton])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cares: [Care?]? {
        get {
          return (resultMap["cares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Care?] in value.map { (value: ResultMap?) -> Care? in value.flatMap { (value: ResultMap) -> Care in Care(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Care?]) -> [ResultMap?] in value.map { (value: Care?) -> ResultMap? in value.flatMap { (value: Care) -> ResultMap in value.resultMap } } }, forKey: "cares")
        }
      }

      public var caresToDefaultButton: Bool? {
        get {
          return resultMap["caresToDefaultButton"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "caresToDefaultButton")
        }
      }

      public struct Care: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GardenPlantCare"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("count", type: .scalar(Int.self)),
            GraphQLField("period", type: .scalar(PeriodType.self)),
            GraphQLField("sendNotificationAt", type: .scalar(String.self)),
            GraphQLField("isActive", type: .scalar(Bool.self)),
            GraphQLField("nextDate", type: .scalar(String.self)),
            GraphQLField("CareType", type: .object(CareType.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, count: Int? = nil, period: PeriodType? = nil, sendNotificationAt: String? = nil, isActive: Bool? = nil, nextDate: String? = nil, careType: CareType? = nil) {
          self.init(unsafeResultMap: ["__typename": "GardenPlantCare", "id": id, "name": name, "count": count, "period": period, "sendNotificationAt": sendNotificationAt, "isActive": isActive, "nextDate": nextDate, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var count: Int? {
          get {
            return resultMap["count"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "count")
          }
        }

        public var period: PeriodType? {
          get {
            return resultMap["period"] as? PeriodType
          }
          set {
            resultMap.updateValue(newValue, forKey: "period")
          }
        }

        public var sendNotificationAt: String? {
          get {
            return resultMap["sendNotificationAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sendNotificationAt")
          }
        }

        public var isActive: Bool? {
          get {
            return resultMap["isActive"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isActive")
          }
        }

        public var nextDate: String? {
          get {
            return resultMap["nextDate"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextDate")
          }
        }

        public var careType: CareType? {
          get {
            return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
          }
        }

        public struct CareType: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CareType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class GardenPlantHistoryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenPlantHistory($gardenPlantId: String!, $pagination: InputPagination) {
      gardenPlantHistory(gardenPlantId: $gardenPlantId, pagination: $pagination) {
        __typename
        Pagination {
          __typename
          limit
          nextPageExist
          offset
          prevPageExist
          totalPages
        }
        GardenPlantsHistoryList {
          __typename
          createdAt
          type
          GardenPlantCare {
            __typename
            id
            name
            status
          }
          Media {
            __typename
            id
            urlIosFull
            urlIosPrev
            notes
          }
        }
      }
    }
    """

  public let operationName: String = "GardenPlantHistory"

  public var gardenPlantId: String
  public var pagination: InputPagination?

  public init(gardenPlantId: String, pagination: InputPagination? = nil) {
    self.gardenPlantId = gardenPlantId
    self.pagination = pagination
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId, "pagination": pagination]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlantHistory", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId"), "pagination": GraphQLVariable("pagination")], type: .object(GardenPlantHistory.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantHistory: GardenPlantHistory? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardenPlantHistory": gardenPlantHistory.flatMap { (value: GardenPlantHistory) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantHistory: GardenPlantHistory? {
      get {
        return (resultMap["gardenPlantHistory"] as? ResultMap).flatMap { GardenPlantHistory(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlantHistory")
      }
    }

    public struct GardenPlantHistory: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlantHistoryResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Pagination", type: .object(Pagination.selections)),
          GraphQLField("GardenPlantsHistoryList", type: .list(.object(GardenPlantsHistoryList.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination? = nil, gardenPlantsHistoryList: [GardenPlantsHistoryList?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlantHistoryResponse", "Pagination": pagination.flatMap { (value: Pagination) -> ResultMap in value.resultMap }, "GardenPlantsHistoryList": gardenPlantsHistoryList.flatMap { (value: [GardenPlantsHistoryList?]) -> [ResultMap?] in value.map { (value: GardenPlantsHistoryList?) -> ResultMap? in value.flatMap { (value: GardenPlantsHistoryList) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pagination: Pagination? {
        get {
          return (resultMap["Pagination"] as? ResultMap).flatMap { Pagination(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Pagination")
        }
      }

      public var gardenPlantsHistoryList: [GardenPlantsHistoryList?]? {
        get {
          return (resultMap["GardenPlantsHistoryList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GardenPlantsHistoryList?] in value.map { (value: ResultMap?) -> GardenPlantsHistoryList? in value.flatMap { (value: ResultMap) -> GardenPlantsHistoryList in GardenPlantsHistoryList(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [GardenPlantsHistoryList?]) -> [ResultMap?] in value.map { (value: GardenPlantsHistoryList?) -> ResultMap? in value.flatMap { (value: GardenPlantsHistoryList) -> ResultMap in value.resultMap } } }, forKey: "GardenPlantsHistoryList")
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Pagination"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("limit", type: .scalar(Int.self)),
            GraphQLField("nextPageExist", type: .scalar(Bool.self)),
            GraphQLField("offset", type: .scalar(Int.self)),
            GraphQLField("prevPageExist", type: .scalar(Bool.self)),
            GraphQLField("totalPages", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(limit: Int? = nil, nextPageExist: Bool? = nil, offset: Int? = nil, prevPageExist: Bool? = nil, totalPages: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "limit": limit, "nextPageExist": nextPageExist, "offset": offset, "prevPageExist": prevPageExist, "totalPages": totalPages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var limit: Int? {
          get {
            return resultMap["limit"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "limit")
          }
        }

        public var nextPageExist: Bool? {
          get {
            return resultMap["nextPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextPageExist")
          }
        }

        public var offset: Int? {
          get {
            return resultMap["offset"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "offset")
          }
        }

        public var prevPageExist: Bool? {
          get {
            return resultMap["prevPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "prevPageExist")
          }
        }

        public var totalPages: Int? {
          get {
            return resultMap["totalPages"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPages")
          }
        }
      }

      public struct GardenPlantsHistoryList: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GardenPlantHistoryView"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(GardenPlantHistoryType.self)),
            GraphQLField("GardenPlantCare", type: .object(GardenPlantCare.selections)),
            GraphQLField("Media", type: .object(Medium.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(createdAt: String? = nil, type: GardenPlantHistoryType? = nil, gardenPlantCare: GardenPlantCare? = nil, media: Medium? = nil) {
          self.init(unsafeResultMap: ["__typename": "GardenPlantHistoryView", "createdAt": createdAt, "type": type, "GardenPlantCare": gardenPlantCare.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap }, "Media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var type: GardenPlantHistoryType? {
          get {
            return resultMap["type"] as? GardenPlantHistoryType
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var gardenPlantCare: GardenPlantCare? {
          get {
            return (resultMap["GardenPlantCare"] as? ResultMap).flatMap { GardenPlantCare(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "GardenPlantCare")
          }
        }

        public var media: Medium? {
          get {
            return (resultMap["Media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "Media")
          }
        }

        public struct GardenPlantCare: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["GardenPlantCare"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("status", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, name: String? = nil, status: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "GardenPlantCare", "id": id, "name": name, "status": status])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var status: String? {
            get {
              return resultMap["status"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "status")
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
              GraphQLField("notes", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil, notes: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev, "notes": notes])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }

          public var notes: String? {
            get {
              return resultMap["notes"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "notes")
            }
          }
        }
      }
    }
  }
}

public final class GardenPlantsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenPlants($gardenId: String!, $pagination: InputPagination!, $careTypeId: Int, $isHappy: Boolean) {
      gardenPlants(
        gardenId: $gardenId
        pagination: $pagination
        careTypeId: $careTypeId
        isHappy: $isHappy
      ) {
        __typename
        GardenPlants {
          __typename
          id
          name
          isHappy
          userMainImage {
            __typename
            urlIosPrev
            urlIosFull
          }
          GardenPlantCares {
            __typename
            count
            period
            CareType {
              __typename
              id
              name
            }
          }
        }
        Pagination {
          __typename
          limit
          nextPageExist
          offset
          prevPageExist
          totalPages
        }
      }
    }
    """

  public let operationName: String = "GardenPlants"

  public var gardenId: String
  public var pagination: InputPagination
  public var careTypeId: Int?
  public var isHappy: Bool?

  public init(gardenId: String, pagination: InputPagination, careTypeId: Int? = nil, isHappy: Bool? = nil) {
    self.gardenId = gardenId
    self.pagination = pagination
    self.careTypeId = careTypeId
    self.isHappy = isHappy
  }

  public var variables: GraphQLMap? {
    return ["gardenId": gardenId, "pagination": pagination, "careTypeId": careTypeId, "isHappy": isHappy]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardenPlants", arguments: ["gardenId": GraphQLVariable("gardenId"), "pagination": GraphQLVariable("pagination"), "careTypeId": GraphQLVariable("careTypeId"), "isHappy": GraphQLVariable("isHappy")], type: .object(GardenPlant.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlants: GardenPlant? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardenPlants": gardenPlants.flatMap { (value: GardenPlant) -> ResultMap in value.resultMap }])
    }

    public var gardenPlants: GardenPlant? {
      get {
        return (resultMap["gardenPlants"] as? ResultMap).flatMap { GardenPlant(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardenPlants")
      }
    }

    public struct GardenPlant: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlantsResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("GardenPlants", type: .list(.object(GardenPlant.selections))),
          GraphQLField("Pagination", type: .object(Pagination.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(gardenPlants: [GardenPlant?]? = nil, pagination: Pagination? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlantsResponse", "GardenPlants": gardenPlants.flatMap { (value: [GardenPlant?]) -> [ResultMap?] in value.map { (value: GardenPlant?) -> ResultMap? in value.flatMap { (value: GardenPlant) -> ResultMap in value.resultMap } } }, "Pagination": pagination.flatMap { (value: Pagination) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var gardenPlants: [GardenPlant?]? {
        get {
          return (resultMap["GardenPlants"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GardenPlant?] in value.map { (value: ResultMap?) -> GardenPlant? in value.flatMap { (value: ResultMap) -> GardenPlant in GardenPlant(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [GardenPlant?]) -> [ResultMap?] in value.map { (value: GardenPlant?) -> ResultMap? in value.flatMap { (value: GardenPlant) -> ResultMap in value.resultMap } } }, forKey: "GardenPlants")
        }
      }

      public var pagination: Pagination? {
        get {
          return (resultMap["Pagination"] as? ResultMap).flatMap { Pagination(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Pagination")
        }
      }

      public struct GardenPlant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GardenPlant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("isHappy", type: .scalar(Bool.self)),
            GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
            GraphQLField("GardenPlantCares", type: .list(.object(GardenPlantCare.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, isHappy: Bool? = nil, userMainImage: UserMainImage? = nil, gardenPlantCares: [GardenPlantCare?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "GardenPlant", "id": id, "name": name, "isHappy": isHappy, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "GardenPlantCares": gardenPlantCares.flatMap { (value: [GardenPlantCare?]) -> [ResultMap?] in value.map { (value: GardenPlantCare?) -> ResultMap? in value.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var isHappy: Bool? {
          get {
            return resultMap["isHappy"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isHappy")
          }
        }

        public var userMainImage: UserMainImage? {
          get {
            return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
          }
        }

        public var gardenPlantCares: [GardenPlantCare?]? {
          get {
            return (resultMap["GardenPlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GardenPlantCare?] in value.map { (value: ResultMap?) -> GardenPlantCare? in value.flatMap { (value: ResultMap) -> GardenPlantCare in GardenPlantCare(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [GardenPlantCare?]) -> [ResultMap?] in value.map { (value: GardenPlantCare?) -> ResultMap? in value.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap } } }, forKey: "GardenPlantCares")
          }
        }

        public struct UserMainImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(urlIosPrev: String? = nil, urlIosFull: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "urlIosPrev": urlIosPrev, "urlIosFull": urlIosFull])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }
        }

        public struct GardenPlantCare: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["GardenPlantCare"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .scalar(Int.self)),
              GraphQLField("period", type: .scalar(PeriodType.self)),
              GraphQLField("CareType", type: .object(CareType.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(count: Int? = nil, period: PeriodType? = nil, careType: CareType? = nil) {
            self.init(unsafeResultMap: ["__typename": "GardenPlantCare", "count": count, "period": period, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var count: Int? {
            get {
              return resultMap["count"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "count")
            }
          }

          public var period: PeriodType? {
            get {
              return resultMap["period"] as? PeriodType
            }
            set {
              resultMap.updateValue(newValue, forKey: "period")
            }
          }

          public var careType: CareType? {
            get {
              return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
            }
          }

          public struct CareType: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CareType"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Pagination"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("limit", type: .scalar(Int.self)),
            GraphQLField("nextPageExist", type: .scalar(Bool.self)),
            GraphQLField("offset", type: .scalar(Int.self)),
            GraphQLField("prevPageExist", type: .scalar(Bool.self)),
            GraphQLField("totalPages", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(limit: Int? = nil, nextPageExist: Bool? = nil, offset: Int? = nil, prevPageExist: Bool? = nil, totalPages: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "limit": limit, "nextPageExist": nextPageExist, "offset": offset, "prevPageExist": prevPageExist, "totalPages": totalPages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var limit: Int? {
          get {
            return resultMap["limit"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "limit")
          }
        }

        public var nextPageExist: Bool? {
          get {
            return resultMap["nextPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextPageExist")
          }
        }

        public var offset: Int? {
          get {
            return resultMap["offset"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "offset")
          }
        }

        public var prevPageExist: Bool? {
          get {
            return resultMap["prevPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "prevPageExist")
          }
        }

        public var totalPages: Int? {
          get {
            return resultMap["totalPages"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPages")
          }
        }
      }
    }
  }
}

public final class GardenPlantStatisticsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GardenPlantStatistics($gardenPlantId: String!) {
      GardenPlantStatistics(gardenPlantId: $gardenPlantId) {
        __typename
        caresDone
        age
        waterDrank
      }
    }
    """

  public let operationName: String = "GardenPlantStatistics"

  public var gardenPlantId: String

  public init(gardenPlantId: String) {
    self.gardenPlantId = gardenPlantId
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("GardenPlantStatistics", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId")], type: .object(GardenPlantStatistic.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardenPlantStatistics: GardenPlantStatistic? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "GardenPlantStatistics": gardenPlantStatistics.flatMap { (value: GardenPlantStatistic) -> ResultMap in value.resultMap }])
    }

    public var gardenPlantStatistics: GardenPlantStatistic? {
      get {
        return (resultMap["GardenPlantStatistics"] as? ResultMap).flatMap { GardenPlantStatistic(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "GardenPlantStatistics")
      }
    }

    public struct GardenPlantStatistic: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardenPlantStatistics"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("caresDone", type: .scalar(Int.self)),
          GraphQLField("age", type: .scalar(Int.self)),
          GraphQLField("waterDrank", type: .scalar(Double.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(caresDone: Int? = nil, age: Int? = nil, waterDrank: Double? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardenPlantStatistics", "caresDone": caresDone, "age": age, "waterDrank": waterDrank])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var caresDone: Int? {
        get {
          return resultMap["caresDone"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "caresDone")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }

      public var waterDrank: Double? {
        get {
          return resultMap["waterDrank"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "waterDrank")
        }
      }
    }
  }
}

public final class GardensQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Gardens($pagination: InputPagination) {
      gardens(pagination: $pagination) {
        __typename
        Gardens {
          __typename
          id
          name
          userMainImage {
            __typename
            id
            urlIosFull
            urlIosPrev
          }
          isDefault
          totalPlants
          needCareCount
        }
      }
    }
    """

  public let operationName: String = "Gardens"

  public var pagination: InputPagination?

  public init(pagination: InputPagination? = nil) {
    self.pagination = pagination
  }

  public var variables: GraphQLMap? {
    return ["pagination": pagination]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("gardens", arguments: ["pagination": GraphQLVariable("pagination")], type: .object(Garden.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(gardens: Garden? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "gardens": gardens.flatMap { (value: Garden) -> ResultMap in value.resultMap }])
    }

    public var gardens: Garden? {
      get {
        return (resultMap["gardens"] as? ResultMap).flatMap { Garden(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "gardens")
      }
    }

    public struct Garden: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["GardensResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Gardens", type: .list(.object(Garden.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(gardens: [Garden?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "GardensResponse", "Gardens": gardens.flatMap { (value: [Garden?]) -> [ResultMap?] in value.map { (value: Garden?) -> ResultMap? in value.flatMap { (value: Garden) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var gardens: [Garden?]? {
        get {
          return (resultMap["Gardens"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Garden?] in value.map { (value: ResultMap?) -> Garden? in value.flatMap { (value: ResultMap) -> Garden in Garden(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Garden?]) -> [ResultMap?] in value.map { (value: Garden?) -> ResultMap? in value.flatMap { (value: Garden) -> ResultMap in value.resultMap } } }, forKey: "Gardens")
        }
      }

      public struct Garden: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Garden"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
            GraphQLField("isDefault", type: .scalar(Bool.self)),
            GraphQLField("totalPlants", type: .scalar(Int.self)),
            GraphQLField("needCareCount", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, userMainImage: UserMainImage? = nil, isDefault: Bool? = nil, totalPlants: Int? = nil, needCareCount: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "isDefault": isDefault, "totalPlants": totalPlants, "needCareCount": needCareCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var userMainImage: UserMainImage? {
          get {
            return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
          }
        }

        public var isDefault: Bool? {
          get {
            return resultMap["isDefault"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isDefault")
          }
        }

        public var totalPlants: Int? {
          get {
            return resultMap["totalPlants"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPlants")
          }
        }

        public var needCareCount: Int? {
          get {
            return resultMap["needCareCount"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "needCareCount")
          }
        }

        public struct UserMainImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }
        }
      }
    }
  }
}

public final class GetCatalogPlantsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetCatalogPlants($pagination: InputPagination!, $search: String!, $onlyFavorites: Boolean) {
      getCatalogPlants(
        pagination: $pagination
        search: $search
        onlyFavorites: $onlyFavorites
      ) {
        __typename
        pagination {
          __typename
          limit
          nextPageExist
          offset
          prevPageExist
          totalPages
        }
        totalFavorites
        plants {
          __typename
          id
          description {
            __typename
            is_favorite
            name
            image {
              __typename
              id
              urlIosFull
              urlIosPrev
            }
          }
        }
      }
    }
    """

  public let operationName: String = "GetCatalogPlants"

  public var pagination: InputPagination
  public var search: String
  public var onlyFavorites: Bool?

  public init(pagination: InputPagination, search: String, onlyFavorites: Bool? = nil) {
    self.pagination = pagination
    self.search = search
    self.onlyFavorites = onlyFavorites
  }

  public var variables: GraphQLMap? {
    return ["pagination": pagination, "search": search, "onlyFavorites": onlyFavorites]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getCatalogPlants", arguments: ["pagination": GraphQLVariable("pagination"), "search": GraphQLVariable("search"), "onlyFavorites": GraphQLVariable("onlyFavorites")], type: .object(GetCatalogPlant.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getCatalogPlants: GetCatalogPlant? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getCatalogPlants": getCatalogPlants.flatMap { (value: GetCatalogPlant) -> ResultMap in value.resultMap }])
    }

    public var getCatalogPlants: GetCatalogPlant? {
      get {
        return (resultMap["getCatalogPlants"] as? ResultMap).flatMap { GetCatalogPlant(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getCatalogPlants")
      }
    }

    public struct GetCatalogPlant: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ShortPlantsModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pagination", type: .object(Pagination.selections)),
          GraphQLField("totalFavorites", type: .scalar(Int.self)),
          GraphQLField("plants", type: .list(.object(Plant.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination? = nil, totalFavorites: Int? = nil, plants: [Plant?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "ShortPlantsModel", "pagination": pagination.flatMap { (value: Pagination) -> ResultMap in value.resultMap }, "totalFavorites": totalFavorites, "plants": plants.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pagination: Pagination? {
        get {
          return (resultMap["pagination"] as? ResultMap).flatMap { Pagination(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pagination")
        }
      }

      public var totalFavorites: Int? {
        get {
          return resultMap["totalFavorites"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalFavorites")
        }
      }

      public var plants: [Plant?]? {
        get {
          return (resultMap["plants"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Plant?] in value.map { (value: ResultMap?) -> Plant? in value.flatMap { (value: ResultMap) -> Plant in Plant(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }, forKey: "plants")
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Pagination"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("limit", type: .scalar(Int.self)),
            GraphQLField("nextPageExist", type: .scalar(Bool.self)),
            GraphQLField("offset", type: .scalar(Int.self)),
            GraphQLField("prevPageExist", type: .scalar(Bool.self)),
            GraphQLField("totalPages", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(limit: Int? = nil, nextPageExist: Bool? = nil, offset: Int? = nil, prevPageExist: Bool? = nil, totalPages: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "limit": limit, "nextPageExist": nextPageExist, "offset": offset, "prevPageExist": prevPageExist, "totalPages": totalPages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var limit: Int? {
          get {
            return resultMap["limit"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "limit")
          }
        }

        public var nextPageExist: Bool? {
          get {
            return resultMap["nextPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextPageExist")
          }
        }

        public var offset: Int? {
          get {
            return resultMap["offset"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "offset")
          }
        }

        public var prevPageExist: Bool? {
          get {
            return resultMap["prevPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "prevPageExist")
          }
        }

        public var totalPages: Int? {
          get {
            return resultMap["totalPages"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPages")
          }
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ShortPlantModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("description", type: .object(Description.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, description: Description? = nil) {
          self.init(unsafeResultMap: ["__typename": "ShortPlantModel", "id": id, "description": description.flatMap { (value: Description) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var description: Description? {
          get {
            return (resultMap["description"] as? ResultMap).flatMap { Description(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "description")
          }
        }

        public struct Description: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantDescriptionShortModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("is_favorite", type: .scalar(Bool.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("image", type: .object(Image.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(isFavorite: Bool? = nil, name: String? = nil, image: Image? = nil) {
            self.init(unsafeResultMap: ["__typename": "PlantDescriptionShortModel", "is_favorite": isFavorite, "name": name, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var isFavorite: Bool? {
            get {
              return resultMap["is_favorite"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "is_favorite")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var image: Image? {
            get {
              return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "image")
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("urlIosFull", type: .scalar(String.self)),
                GraphQLField("urlIosPrev", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var urlIosFull: String? {
              get {
                return resultMap["urlIosFull"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosFull")
              }
            }

            public var urlIosPrev: String? {
              get {
                return resultMap["urlIosPrev"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosPrev")
              }
            }
          }
        }
      }
    }
  }
}

public final class MeQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Me {
      me {
        __typename
        id
        fullName
        email
        timezone
        defaultGardenId
        hasUdid
        Language {
          __typename
          id
          name
          nativeName
          code
          index
        }
        NotificationSettings {
          __typename
          cares
          waitingCares
          missedCares
          frequency {
            __typename
            hours
            minutes
            seconds
          }
          secondChance
          secondChanceSendAfter {
            __typename
            hours
            minutes
            seconds
          }
          todayList
          todayListSendAt
        }
        Gardens {
          __typename
          id
          name
          userMainImage {
            __typename
            id
            urlIosFull
            urlIosPrev
            urlAndroidPhone
            urlAndroidTablet
            notes
          }
          isDefault
          totalPlants
          needCareCount
        }
        access {
          __typename
          diagnosisAvaliable
          diagnosisTotal
          diagnosisUsed
          identifyTotal
          identifyUsed
          isPremium
          subscriptionName
          subscription {
            __typename
            name
            duration
          }
        }
        Sales {
          __typename
          sale
          condition
          value
        }
        totalGardens
        totalFavouritePlants
        totalGardenPlants
        totalUniquePlants
      }
    }
    """

  public let operationName: String = "Me"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("me", type: .object(Me.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
    }

    public var me: Me? {
      get {
        return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MeModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("fullName", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("timezone", type: .scalar(String.self)),
          GraphQLField("defaultGardenId", type: .scalar(String.self)),
          GraphQLField("hasUdid", type: .scalar(Bool.self)),
          GraphQLField("Language", type: .object(Language.selections)),
          GraphQLField("NotificationSettings", type: .object(NotificationSetting.selections)),
          GraphQLField("Gardens", type: .list(.object(Garden.selections))),
          GraphQLField("access", type: .object(Access.selections)),
          GraphQLField("Sales", type: .list(.object(Sale.selections))),
          GraphQLField("totalGardens", type: .scalar(Int.self)),
          GraphQLField("totalFavouritePlants", type: .scalar(Int.self)),
          GraphQLField("totalGardenPlants", type: .scalar(Int.self)),
          GraphQLField("totalUniquePlants", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, fullName: String? = nil, email: String? = nil, timezone: String? = nil, defaultGardenId: String? = nil, hasUdid: Bool? = nil, language: Language? = nil, notificationSettings: NotificationSetting? = nil, gardens: [Garden?]? = nil, access: Access? = nil, sales: [Sale?]? = nil, totalGardens: Int? = nil, totalFavouritePlants: Int? = nil, totalGardenPlants: Int? = nil, totalUniquePlants: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "MeModel", "id": id, "fullName": fullName, "email": email, "timezone": timezone, "defaultGardenId": defaultGardenId, "hasUdid": hasUdid, "Language": language.flatMap { (value: Language) -> ResultMap in value.resultMap }, "NotificationSettings": notificationSettings.flatMap { (value: NotificationSetting) -> ResultMap in value.resultMap }, "Gardens": gardens.flatMap { (value: [Garden?]) -> [ResultMap?] in value.map { (value: Garden?) -> ResultMap? in value.flatMap { (value: Garden) -> ResultMap in value.resultMap } } }, "access": access.flatMap { (value: Access) -> ResultMap in value.resultMap }, "Sales": sales.flatMap { (value: [Sale?]) -> [ResultMap?] in value.map { (value: Sale?) -> ResultMap? in value.flatMap { (value: Sale) -> ResultMap in value.resultMap } } }, "totalGardens": totalGardens, "totalFavouritePlants": totalFavouritePlants, "totalGardenPlants": totalGardenPlants, "totalUniquePlants": totalUniquePlants])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var fullName: String? {
        get {
          return resultMap["fullName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullName")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var timezone: String? {
        get {
          return resultMap["timezone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "timezone")
        }
      }

      public var defaultGardenId: String? {
        get {
          return resultMap["defaultGardenId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "defaultGardenId")
        }
      }

      public var hasUdid: Bool? {
        get {
          return resultMap["hasUdid"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "hasUdid")
        }
      }

      public var language: Language? {
        get {
          return (resultMap["Language"] as? ResultMap).flatMap { Language(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Language")
        }
      }

      public var notificationSettings: NotificationSetting? {
        get {
          return (resultMap["NotificationSettings"] as? ResultMap).flatMap { NotificationSetting(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "NotificationSettings")
        }
      }

      public var gardens: [Garden?]? {
        get {
          return (resultMap["Gardens"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Garden?] in value.map { (value: ResultMap?) -> Garden? in value.flatMap { (value: ResultMap) -> Garden in Garden(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Garden?]) -> [ResultMap?] in value.map { (value: Garden?) -> ResultMap? in value.flatMap { (value: Garden) -> ResultMap in value.resultMap } } }, forKey: "Gardens")
        }
      }

      public var access: Access? {
        get {
          return (resultMap["access"] as? ResultMap).flatMap { Access(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "access")
        }
      }

      public var sales: [Sale?]? {
        get {
          return (resultMap["Sales"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Sale?] in value.map { (value: ResultMap?) -> Sale? in value.flatMap { (value: ResultMap) -> Sale in Sale(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Sale?]) -> [ResultMap?] in value.map { (value: Sale?) -> ResultMap? in value.flatMap { (value: Sale) -> ResultMap in value.resultMap } } }, forKey: "Sales")
        }
      }

      public var totalGardens: Int? {
        get {
          return resultMap["totalGardens"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalGardens")
        }
      }

      public var totalFavouritePlants: Int? {
        get {
          return resultMap["totalFavouritePlants"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalFavouritePlants")
        }
      }

      public var totalGardenPlants: Int? {
        get {
          return resultMap["totalGardenPlants"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalGardenPlants")
        }
      }

      public var totalUniquePlants: Int? {
        get {
          return resultMap["totalUniquePlants"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalUniquePlants")
        }
      }

      public struct Language: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Language"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("nativeName", type: .scalar(String.self)),
            GraphQLField("code", type: .scalar(String.self)),
            GraphQLField("index", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, nativeName: String? = nil, code: String? = nil, index: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Language", "id": id, "name": name, "nativeName": nativeName, "code": code, "index": index])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var nativeName: String? {
          get {
            return resultMap["nativeName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "nativeName")
          }
        }

        public var code: String? {
          get {
            return resultMap["code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "code")
          }
        }

        public var index: Int? {
          get {
            return resultMap["index"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "index")
          }
        }
      }

      public struct NotificationSetting: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["NotificationSettings"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cares", type: .scalar(Bool.self)),
            GraphQLField("waitingCares", type: .scalar(Bool.self)),
            GraphQLField("missedCares", type: .scalar(Bool.self)),
            GraphQLField("frequency", type: .object(Frequency.selections)),
            GraphQLField("secondChance", type: .scalar(Bool.self)),
            GraphQLField("secondChanceSendAfter", type: .object(SecondChanceSendAfter.selections)),
            GraphQLField("todayList", type: .scalar(Bool.self)),
            GraphQLField("todayListSendAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(cares: Bool? = nil, waitingCares: Bool? = nil, missedCares: Bool? = nil, frequency: Frequency? = nil, secondChance: Bool? = nil, secondChanceSendAfter: SecondChanceSendAfter? = nil, todayList: Bool? = nil, todayListSendAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "NotificationSettings", "cares": cares, "waitingCares": waitingCares, "missedCares": missedCares, "frequency": frequency.flatMap { (value: Frequency) -> ResultMap in value.resultMap }, "secondChance": secondChance, "secondChanceSendAfter": secondChanceSendAfter.flatMap { (value: SecondChanceSendAfter) -> ResultMap in value.resultMap }, "todayList": todayList, "todayListSendAt": todayListSendAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var cares: Bool? {
          get {
            return resultMap["cares"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "cares")
          }
        }

        public var waitingCares: Bool? {
          get {
            return resultMap["waitingCares"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "waitingCares")
          }
        }

        public var missedCares: Bool? {
          get {
            return resultMap["missedCares"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "missedCares")
          }
        }

        public var frequency: Frequency? {
          get {
            return (resultMap["frequency"] as? ResultMap).flatMap { Frequency(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "frequency")
          }
        }

        public var secondChance: Bool? {
          get {
            return resultMap["secondChance"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "secondChance")
          }
        }

        public var secondChanceSendAfter: SecondChanceSendAfter? {
          get {
            return (resultMap["secondChanceSendAfter"] as? ResultMap).flatMap { SecondChanceSendAfter(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "secondChanceSendAfter")
          }
        }

        public var todayList: Bool? {
          get {
            return resultMap["todayList"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "todayList")
          }
        }

        public var todayListSendAt: String? {
          get {
            return resultMap["todayListSendAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "todayListSendAt")
          }
        }

        public struct Frequency: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["IntervalRepresentation"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("hours", type: .scalar(Int.self)),
              GraphQLField("minutes", type: .scalar(Int.self)),
              GraphQLField("seconds", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(hours: Int? = nil, minutes: Int? = nil, seconds: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "IntervalRepresentation", "hours": hours, "minutes": minutes, "seconds": seconds])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var hours: Int? {
            get {
              return resultMap["hours"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "hours")
            }
          }

          public var minutes: Int? {
            get {
              return resultMap["minutes"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "minutes")
            }
          }

          public var seconds: Int? {
            get {
              return resultMap["seconds"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "seconds")
            }
          }
        }

        public struct SecondChanceSendAfter: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["IntervalRepresentation"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("hours", type: .scalar(Int.self)),
              GraphQLField("minutes", type: .scalar(Int.self)),
              GraphQLField("seconds", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(hours: Int? = nil, minutes: Int? = nil, seconds: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "IntervalRepresentation", "hours": hours, "minutes": minutes, "seconds": seconds])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var hours: Int? {
            get {
              return resultMap["hours"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "hours")
            }
          }

          public var minutes: Int? {
            get {
              return resultMap["minutes"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "minutes")
            }
          }

          public var seconds: Int? {
            get {
              return resultMap["seconds"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "seconds")
            }
          }
        }
      }

      public struct Garden: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Garden"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
            GraphQLField("isDefault", type: .scalar(Bool.self)),
            GraphQLField("totalPlants", type: .scalar(Int.self)),
            GraphQLField("needCareCount", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, userMainImage: UserMainImage? = nil, isDefault: Bool? = nil, totalPlants: Int? = nil, needCareCount: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "isDefault": isDefault, "totalPlants": totalPlants, "needCareCount": needCareCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var userMainImage: UserMainImage? {
          get {
            return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
          }
        }

        public var isDefault: Bool? {
          get {
            return resultMap["isDefault"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isDefault")
          }
        }

        public var totalPlants: Int? {
          get {
            return resultMap["totalPlants"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPlants")
          }
        }

        public var needCareCount: Int? {
          get {
            return resultMap["needCareCount"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "needCareCount")
          }
        }

        public struct UserMainImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
              GraphQLField("urlAndroidPhone", type: .scalar(String.self)),
              GraphQLField("urlAndroidTablet", type: .scalar(String.self)),
              GraphQLField("notes", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil, urlAndroidPhone: String? = nil, urlAndroidTablet: String? = nil, notes: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev, "urlAndroidPhone": urlAndroidPhone, "urlAndroidTablet": urlAndroidTablet, "notes": notes])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }

          public var urlAndroidPhone: String? {
            get {
              return resultMap["urlAndroidPhone"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlAndroidPhone")
            }
          }

          public var urlAndroidTablet: String? {
            get {
              return resultMap["urlAndroidTablet"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlAndroidTablet")
            }
          }

          public var notes: String? {
            get {
              return resultMap["notes"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "notes")
            }
          }
        }
      }

      public struct Access: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Access"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("diagnosisAvaliable", type: .scalar(Bool.self)),
            GraphQLField("diagnosisTotal", type: .scalar(Int.self)),
            GraphQLField("diagnosisUsed", type: .scalar(Int.self)),
            GraphQLField("identifyTotal", type: .scalar(Int.self)),
            GraphQLField("identifyUsed", type: .scalar(Int.self)),
            GraphQLField("isPremium", type: .scalar(Bool.self)),
            GraphQLField("subscriptionName", type: .scalar(String.self)),
            GraphQLField("subscription", type: .object(Subscription.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(diagnosisAvaliable: Bool? = nil, diagnosisTotal: Int? = nil, diagnosisUsed: Int? = nil, identifyTotal: Int? = nil, identifyUsed: Int? = nil, isPremium: Bool? = nil, subscriptionName: String? = nil, subscription: Subscription? = nil) {
          self.init(unsafeResultMap: ["__typename": "Access", "diagnosisAvaliable": diagnosisAvaliable, "diagnosisTotal": diagnosisTotal, "diagnosisUsed": diagnosisUsed, "identifyTotal": identifyTotal, "identifyUsed": identifyUsed, "isPremium": isPremium, "subscriptionName": subscriptionName, "subscription": subscription.flatMap { (value: Subscription) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var diagnosisAvaliable: Bool? {
          get {
            return resultMap["diagnosisAvaliable"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisAvaliable")
          }
        }

        public var diagnosisTotal: Int? {
          get {
            return resultMap["diagnosisTotal"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisTotal")
          }
        }

        public var diagnosisUsed: Int? {
          get {
            return resultMap["diagnosisUsed"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisUsed")
          }
        }

        public var identifyTotal: Int? {
          get {
            return resultMap["identifyTotal"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "identifyTotal")
          }
        }

        public var identifyUsed: Int? {
          get {
            return resultMap["identifyUsed"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "identifyUsed")
          }
        }

        public var isPremium: Bool? {
          get {
            return resultMap["isPremium"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPremium")
          }
        }

        public var subscriptionName: String? {
          get {
            return resultMap["subscriptionName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "subscriptionName")
          }
        }

        public var subscription: Subscription? {
          get {
            return (resultMap["subscription"] as? ResultMap).flatMap { Subscription(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "subscription")
          }
        }

        public struct Subscription: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["SubscriptionShort"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("duration", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, duration: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "SubscriptionShort", "name": name, "duration": duration])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var duration: String? {
            get {
              return resultMap["duration"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "duration")
            }
          }
        }
      }

      public struct Sale: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Sale"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("sale", type: .scalar(SaleType.self)),
            GraphQLField("condition", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(sale: SaleType? = nil, condition: String? = nil, value: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sale", "sale": sale, "condition": condition, "value": value])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var sale: SaleType? {
          get {
            return resultMap["sale"] as? SaleType
          }
          set {
            resultMap.updateValue(newValue, forKey: "sale")
          }
        }

        public var condition: String? {
          get {
            return resultMap["condition"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "condition")
          }
        }

        public var value: Int? {
          get {
            return resultMap["value"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class PlantByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PlantById($id: String!) {
      plantById(id: $id) {
        __typename
        PlantCares {
          __typename
          count
          id
          period
          CareType {
            __typename
            id
            name
          }
        }
        Climate {
          __typename
          deciduous
          habit
          hardiness
          height
          moisture
          ph
          shade
          soil
        }
        descriptionFull
        descriptionWikiHtml
        id
        isFavourite
        latinName
        plantImages {
          __typename
          id
          urlIosFull
          urlIosPrev
        }
        names
        wikiUrl
      }
    }
    """

  public let operationName: String = "PlantById"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("plantById", arguments: ["id": GraphQLVariable("id")], type: .object(PlantById.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(plantById: PlantById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "plantById": plantById.flatMap { (value: PlantById) -> ResultMap in value.resultMap }])
    }

    public var plantById: PlantById? {
      get {
        return (resultMap["plantById"] as? ResultMap).flatMap { PlantById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "plantById")
      }
    }

    public struct PlantById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Plant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PlantCares", type: .list(.object(PlantCare.selections))),
          GraphQLField("Climate", type: .object(Climate.selections)),
          GraphQLField("descriptionFull", type: .scalar(String.self)),
          GraphQLField("descriptionWikiHtml", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("isFavourite", type: .scalar(Bool.self)),
          GraphQLField("latinName", type: .scalar(String.self)),
          GraphQLField("plantImages", type: .list(.object(PlantImage.selections))),
          GraphQLField("names", type: .scalar(String.self)),
          GraphQLField("wikiUrl", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(plantCares: [PlantCare?]? = nil, climate: Climate? = nil, descriptionFull: String? = nil, descriptionWikiHtml: String? = nil, id: GraphQLID? = nil, isFavourite: Bool? = nil, latinName: String? = nil, plantImages: [PlantImage?]? = nil, names: String? = nil, wikiUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Plant", "PlantCares": plantCares.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, "Climate": climate.flatMap { (value: Climate) -> ResultMap in value.resultMap }, "descriptionFull": descriptionFull, "descriptionWikiHtml": descriptionWikiHtml, "id": id, "isFavourite": isFavourite, "latinName": latinName, "plantImages": plantImages.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, "names": names, "wikiUrl": wikiUrl])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var plantCares: [PlantCare?]? {
        get {
          return (resultMap["PlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantCare?] in value.map { (value: ResultMap?) -> PlantCare? in value.flatMap { (value: ResultMap) -> PlantCare in PlantCare(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, forKey: "PlantCares")
        }
      }

      public var climate: Climate? {
        get {
          return (resultMap["Climate"] as? ResultMap).flatMap { Climate(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Climate")
        }
      }

      public var descriptionFull: String? {
        get {
          return resultMap["descriptionFull"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "descriptionFull")
        }
      }

      public var descriptionWikiHtml: String? {
        get {
          return resultMap["descriptionWikiHtml"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "descriptionWikiHtml")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var isFavourite: Bool? {
        get {
          return resultMap["isFavourite"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isFavourite")
        }
      }

      public var latinName: String? {
        get {
          return resultMap["latinName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "latinName")
        }
      }

      public var plantImages: [PlantImage?]? {
        get {
          return (resultMap["plantImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantImage?] in value.map { (value: ResultMap?) -> PlantImage? in value.flatMap { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, forKey: "plantImages")
        }
      }

      public var names: String? {
        get {
          return resultMap["names"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "names")
        }
      }

      public var wikiUrl: String? {
        get {
          return resultMap["wikiUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wikiUrl")
        }
      }

      public struct PlantCare: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PlantCare"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("count", type: .scalar(Int.self)),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("period", type: .scalar(PeriodType.self)),
            GraphQLField("CareType", type: .object(CareType.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(count: Int? = nil, id: GraphQLID? = nil, period: PeriodType? = nil, careType: CareType? = nil) {
          self.init(unsafeResultMap: ["__typename": "PlantCare", "count": count, "id": id, "period": period, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var count: Int? {
          get {
            return resultMap["count"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "count")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var period: PeriodType? {
          get {
            return resultMap["period"] as? PeriodType
          }
          set {
            resultMap.updateValue(newValue, forKey: "period")
          }
        }

        public var careType: CareType? {
          get {
            return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
          }
        }

        public struct CareType: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CareType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }

      public struct Climate: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Climate"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("deciduous", type: .scalar(ClimateDeciduous.self)),
            GraphQLField("habit", type: .scalar(ClimateHabit.self)),
            GraphQLField("hardiness", type: .scalar(Int.self)),
            GraphQLField("height", type: .scalar(Int.self)),
            GraphQLField("moisture", type: .scalar(ClimateMoisture.self)),
            GraphQLField("ph", type: .scalar(ClimatePh.self)),
            GraphQLField("shade", type: .scalar(ClimateShade.self)),
            GraphQLField("soil", type: .scalar(ClimateSoil.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(deciduous: ClimateDeciduous? = nil, habit: ClimateHabit? = nil, hardiness: Int? = nil, height: Int? = nil, moisture: ClimateMoisture? = nil, ph: ClimatePh? = nil, shade: ClimateShade? = nil, soil: ClimateSoil? = nil) {
          self.init(unsafeResultMap: ["__typename": "Climate", "deciduous": deciduous, "habit": habit, "hardiness": hardiness, "height": height, "moisture": moisture, "ph": ph, "shade": shade, "soil": soil])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var deciduous: ClimateDeciduous? {
          get {
            return resultMap["deciduous"] as? ClimateDeciduous
          }
          set {
            resultMap.updateValue(newValue, forKey: "deciduous")
          }
        }

        public var habit: ClimateHabit? {
          get {
            return resultMap["habit"] as? ClimateHabit
          }
          set {
            resultMap.updateValue(newValue, forKey: "habit")
          }
        }

        public var hardiness: Int? {
          get {
            return resultMap["hardiness"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "hardiness")
          }
        }

        public var height: Int? {
          get {
            return resultMap["height"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "height")
          }
        }

        public var moisture: ClimateMoisture? {
          get {
            return resultMap["moisture"] as? ClimateMoisture
          }
          set {
            resultMap.updateValue(newValue, forKey: "moisture")
          }
        }

        public var ph: ClimatePh? {
          get {
            return resultMap["ph"] as? ClimatePh
          }
          set {
            resultMap.updateValue(newValue, forKey: "ph")
          }
        }

        public var shade: ClimateShade? {
          get {
            return resultMap["shade"] as? ClimateShade
          }
          set {
            resultMap.updateValue(newValue, forKey: "shade")
          }
        }

        public var soil: ClimateSoil? {
          get {
            return resultMap["soil"] as? ClimateSoil
          }
          set {
            resultMap.updateValue(newValue, forKey: "soil")
          }
        }
      }

      public struct PlantImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("urlIosFull", type: .scalar(String.self)),
            GraphQLField("urlIosPrev", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var urlIosFull: String? {
          get {
            return resultMap["urlIosFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String? {
          get {
            return resultMap["urlIosPrev"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
          }
        }
      }
    }
  }
}

public final class RecognizedArhiveQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query RecognizedArhive($pagination: InputPagination!) {
      recognizedArhive(pagination: $pagination) {
        __typename
        pagination {
          __typename
          limit
          nextPageExist
          offset
          prevPageExist
          totalPages
        }
        plant {
          __typename
          PlantCares {
            __typename
            count
            id
            period
            CareType {
              __typename
              id
              name
            }
          }
          Climate {
            __typename
            deciduous
            habit
            hardiness
            height
            moisture
            ph
            shade
            soil
          }
          descriptionFull
          descriptionWikiHtml
          id
          isFavourite
          latinName
          plantImages {
            __typename
            id
            urlIosFull
            urlIosPrev
          }
          names
          wikiUrl
        }
      }
    }
    """

  public let operationName: String = "RecognizedArhive"

  public var pagination: InputPagination

  public init(pagination: InputPagination) {
    self.pagination = pagination
  }

  public var variables: GraphQLMap? {
    return ["pagination": pagination]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("recognizedArhive", arguments: ["pagination": GraphQLVariable("pagination")], type: .object(RecognizedArhive.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(recognizedArhive: RecognizedArhive? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "recognizedArhive": recognizedArhive.flatMap { (value: RecognizedArhive) -> ResultMap in value.resultMap }])
    }

    public var recognizedArhive: RecognizedArhive? {
      get {
        return (resultMap["recognizedArhive"] as? ResultMap).flatMap { RecognizedArhive(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "recognizedArhive")
      }
    }

    public struct RecognizedArhive: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RecognizedArhive"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pagination", type: .nonNull(.object(Pagination.selections))),
          GraphQLField("plant", type: .list(.object(Plant.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination, plant: [Plant?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "RecognizedArhive", "pagination": pagination.resultMap, "plant": plant.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pagination: Pagination {
        get {
          return Pagination(unsafeResultMap: resultMap["pagination"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "pagination")
        }
      }

      public var plant: [Plant?]? {
        get {
          return (resultMap["plant"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Plant?] in value.map { (value: ResultMap?) -> Plant? in value.flatMap { (value: ResultMap) -> Plant in Plant(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }, forKey: "plant")
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Pagination"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("limit", type: .scalar(Int.self)),
            GraphQLField("nextPageExist", type: .scalar(Bool.self)),
            GraphQLField("offset", type: .scalar(Int.self)),
            GraphQLField("prevPageExist", type: .scalar(Bool.self)),
            GraphQLField("totalPages", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(limit: Int? = nil, nextPageExist: Bool? = nil, offset: Int? = nil, prevPageExist: Bool? = nil, totalPages: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "limit": limit, "nextPageExist": nextPageExist, "offset": offset, "prevPageExist": prevPageExist, "totalPages": totalPages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var limit: Int? {
          get {
            return resultMap["limit"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "limit")
          }
        }

        public var nextPageExist: Bool? {
          get {
            return resultMap["nextPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextPageExist")
          }
        }

        public var offset: Int? {
          get {
            return resultMap["offset"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "offset")
          }
        }

        public var prevPageExist: Bool? {
          get {
            return resultMap["prevPageExist"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "prevPageExist")
          }
        }

        public var totalPages: Int? {
          get {
            return resultMap["totalPages"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPages")
          }
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Plant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("PlantCares", type: .list(.object(PlantCare.selections))),
            GraphQLField("Climate", type: .object(Climate.selections)),
            GraphQLField("descriptionFull", type: .scalar(String.self)),
            GraphQLField("descriptionWikiHtml", type: .scalar(String.self)),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("isFavourite", type: .scalar(Bool.self)),
            GraphQLField("latinName", type: .scalar(String.self)),
            GraphQLField("plantImages", type: .list(.object(PlantImage.selections))),
            GraphQLField("names", type: .scalar(String.self)),
            GraphQLField("wikiUrl", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(plantCares: [PlantCare?]? = nil, climate: Climate? = nil, descriptionFull: String? = nil, descriptionWikiHtml: String? = nil, id: GraphQLID? = nil, isFavourite: Bool? = nil, latinName: String? = nil, plantImages: [PlantImage?]? = nil, names: String? = nil, wikiUrl: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Plant", "PlantCares": plantCares.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, "Climate": climate.flatMap { (value: Climate) -> ResultMap in value.resultMap }, "descriptionFull": descriptionFull, "descriptionWikiHtml": descriptionWikiHtml, "id": id, "isFavourite": isFavourite, "latinName": latinName, "plantImages": plantImages.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, "names": names, "wikiUrl": wikiUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var plantCares: [PlantCare?]? {
          get {
            return (resultMap["PlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantCare?] in value.map { (value: ResultMap?) -> PlantCare? in value.flatMap { (value: ResultMap) -> PlantCare in PlantCare(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, forKey: "PlantCares")
          }
        }

        public var climate: Climate? {
          get {
            return (resultMap["Climate"] as? ResultMap).flatMap { Climate(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "Climate")
          }
        }

        public var descriptionFull: String? {
          get {
            return resultMap["descriptionFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionFull")
          }
        }

        public var descriptionWikiHtml: String? {
          get {
            return resultMap["descriptionWikiHtml"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionWikiHtml")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var isFavourite: Bool? {
          get {
            return resultMap["isFavourite"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isFavourite")
          }
        }

        public var latinName: String? {
          get {
            return resultMap["latinName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "latinName")
          }
        }

        public var plantImages: [PlantImage?]? {
          get {
            return (resultMap["plantImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantImage?] in value.map { (value: ResultMap?) -> PlantImage? in value.flatMap { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, forKey: "plantImages")
          }
        }

        public var names: String? {
          get {
            return resultMap["names"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "names")
          }
        }

        public var wikiUrl: String? {
          get {
            return resultMap["wikiUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "wikiUrl")
          }
        }

        public struct PlantCare: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantCare"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .scalar(Int.self)),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("period", type: .scalar(PeriodType.self)),
              GraphQLField("CareType", type: .object(CareType.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(count: Int? = nil, id: GraphQLID? = nil, period: PeriodType? = nil, careType: CareType? = nil) {
            self.init(unsafeResultMap: ["__typename": "PlantCare", "count": count, "id": id, "period": period, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var count: Int? {
            get {
              return resultMap["count"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "count")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var period: PeriodType? {
            get {
              return resultMap["period"] as? PeriodType
            }
            set {
              resultMap.updateValue(newValue, forKey: "period")
            }
          }

          public var careType: CareType? {
            get {
              return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
            }
          }

          public struct CareType: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CareType"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }

        public struct Climate: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Climate"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("deciduous", type: .scalar(ClimateDeciduous.self)),
              GraphQLField("habit", type: .scalar(ClimateHabit.self)),
              GraphQLField("hardiness", type: .scalar(Int.self)),
              GraphQLField("height", type: .scalar(Int.self)),
              GraphQLField("moisture", type: .scalar(ClimateMoisture.self)),
              GraphQLField("ph", type: .scalar(ClimatePh.self)),
              GraphQLField("shade", type: .scalar(ClimateShade.self)),
              GraphQLField("soil", type: .scalar(ClimateSoil.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(deciduous: ClimateDeciduous? = nil, habit: ClimateHabit? = nil, hardiness: Int? = nil, height: Int? = nil, moisture: ClimateMoisture? = nil, ph: ClimatePh? = nil, shade: ClimateShade? = nil, soil: ClimateSoil? = nil) {
            self.init(unsafeResultMap: ["__typename": "Climate", "deciduous": deciduous, "habit": habit, "hardiness": hardiness, "height": height, "moisture": moisture, "ph": ph, "shade": shade, "soil": soil])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var deciduous: ClimateDeciduous? {
            get {
              return resultMap["deciduous"] as? ClimateDeciduous
            }
            set {
              resultMap.updateValue(newValue, forKey: "deciduous")
            }
          }

          public var habit: ClimateHabit? {
            get {
              return resultMap["habit"] as? ClimateHabit
            }
            set {
              resultMap.updateValue(newValue, forKey: "habit")
            }
          }

          public var hardiness: Int? {
            get {
              return resultMap["hardiness"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "hardiness")
            }
          }

          public var height: Int? {
            get {
              return resultMap["height"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "height")
            }
          }

          public var moisture: ClimateMoisture? {
            get {
              return resultMap["moisture"] as? ClimateMoisture
            }
            set {
              resultMap.updateValue(newValue, forKey: "moisture")
            }
          }

          public var ph: ClimatePh? {
            get {
              return resultMap["ph"] as? ClimatePh
            }
            set {
              resultMap.updateValue(newValue, forKey: "ph")
            }
          }

          public var shade: ClimateShade? {
            get {
              return resultMap["shade"] as? ClimateShade
            }
            set {
              resultMap.updateValue(newValue, forKey: "shade")
            }
          }

          public var soil: ClimateSoil? {
            get {
              return resultMap["soil"] as? ClimateSoil
            }
            set {
              resultMap.updateValue(newValue, forKey: "soil")
            }
          }
        }

        public struct PlantImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }
        }
      }
    }
  }
}

public final class ScheduleByGardenPlantQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ScheduleByGardenPlant($gardenPlantId: String!, $onlyFuture: Boolean) {
      scheduleByGardenPlant(gardenPlantId: $gardenPlantId, onlyFuture: $onlyFuture) {
        __typename
        careTypeId
        careTypeName
        nextDate
        status
        gardenName
        gardenPlantIds
      }
    }
    """

  public let operationName: String = "ScheduleByGardenPlant"

  public var gardenPlantId: String
  public var onlyFuture: Bool?

  public init(gardenPlantId: String, onlyFuture: Bool? = nil) {
    self.gardenPlantId = gardenPlantId
    self.onlyFuture = onlyFuture
  }

  public var variables: GraphQLMap? {
    return ["gardenPlantId": gardenPlantId, "onlyFuture": onlyFuture]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("scheduleByGardenPlant", arguments: ["gardenPlantId": GraphQLVariable("gardenPlantId"), "onlyFuture": GraphQLVariable("onlyFuture")], type: .list(.object(ScheduleByGardenPlant.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(scheduleByGardenPlant: [ScheduleByGardenPlant?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "scheduleByGardenPlant": scheduleByGardenPlant.flatMap { (value: [ScheduleByGardenPlant?]) -> [ResultMap?] in value.map { (value: ScheduleByGardenPlant?) -> ResultMap? in value.flatMap { (value: ScheduleByGardenPlant) -> ResultMap in value.resultMap } } }])
    }

    public var scheduleByGardenPlant: [ScheduleByGardenPlant?]? {
      get {
        return (resultMap["scheduleByGardenPlant"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ScheduleByGardenPlant?] in value.map { (value: ResultMap?) -> ScheduleByGardenPlant? in value.flatMap { (value: ResultMap) -> ScheduleByGardenPlant in ScheduleByGardenPlant(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [ScheduleByGardenPlant?]) -> [ResultMap?] in value.map { (value: ScheduleByGardenPlant?) -> ResultMap? in value.flatMap { (value: ScheduleByGardenPlant) -> ResultMap in value.resultMap } } }, forKey: "scheduleByGardenPlant")
      }
    }

    public struct ScheduleByGardenPlant: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Schedule"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("careTypeId", type: .scalar(Int.self)),
          GraphQLField("careTypeName", type: .scalar(String.self)),
          GraphQLField("nextDate", type: .scalar(String.self)),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("gardenName", type: .scalar(String.self)),
          GraphQLField("gardenPlantIds", type: .list(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(careTypeId: Int? = nil, careTypeName: String? = nil, nextDate: String? = nil, status: String? = nil, gardenName: String? = nil, gardenPlantIds: [String?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Schedule", "careTypeId": careTypeId, "careTypeName": careTypeName, "nextDate": nextDate, "status": status, "gardenName": gardenName, "gardenPlantIds": gardenPlantIds])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var careTypeId: Int? {
        get {
          return resultMap["careTypeId"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "careTypeId")
        }
      }

      public var careTypeName: String? {
        get {
          return resultMap["careTypeName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "careTypeName")
        }
      }

      public var nextDate: String? {
        get {
          return resultMap["nextDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nextDate")
        }
      }

      public var status: String? {
        get {
          return resultMap["status"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var gardenName: String? {
        get {
          return resultMap["gardenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gardenName")
        }
      }

      public var gardenPlantIds: [String?]? {
        get {
          return resultMap["gardenPlantIds"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "gardenPlantIds")
        }
      }
    }
  }
}

public final class ScheduleByGardensQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ScheduleByGardens($onlyFuture: Boolean, $nextWeek: Boolean) {
      scheduleByGardens(onlyFuture: $onlyFuture, nextWeek: $nextWeek) {
        __typename
        careTypeId
        careTypeName
        nextDate
        status
        gardenName
        gardenPlantIds
      }
    }
    """

  public let operationName: String = "ScheduleByGardens"

  public var onlyFuture: Bool?
  public var nextWeek: Bool?

  public init(onlyFuture: Bool? = nil, nextWeek: Bool? = nil) {
    self.onlyFuture = onlyFuture
    self.nextWeek = nextWeek
  }

  public var variables: GraphQLMap? {
    return ["onlyFuture": onlyFuture, "nextWeek": nextWeek]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("scheduleByGardens", arguments: ["onlyFuture": GraphQLVariable("onlyFuture"), "nextWeek": GraphQLVariable("nextWeek")], type: .list(.object(ScheduleByGarden.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(scheduleByGardens: [ScheduleByGarden?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "scheduleByGardens": scheduleByGardens.flatMap { (value: [ScheduleByGarden?]) -> [ResultMap?] in value.map { (value: ScheduleByGarden?) -> ResultMap? in value.flatMap { (value: ScheduleByGarden) -> ResultMap in value.resultMap } } }])
    }

    public var scheduleByGardens: [ScheduleByGarden?]? {
      get {
        return (resultMap["scheduleByGardens"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ScheduleByGarden?] in value.map { (value: ResultMap?) -> ScheduleByGarden? in value.flatMap { (value: ResultMap) -> ScheduleByGarden in ScheduleByGarden(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [ScheduleByGarden?]) -> [ResultMap?] in value.map { (value: ScheduleByGarden?) -> ResultMap? in value.flatMap { (value: ScheduleByGarden) -> ResultMap in value.resultMap } } }, forKey: "scheduleByGardens")
      }
    }

    public struct ScheduleByGarden: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Schedule"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("careTypeId", type: .scalar(Int.self)),
          GraphQLField("careTypeName", type: .scalar(String.self)),
          GraphQLField("nextDate", type: .scalar(String.self)),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("gardenName", type: .scalar(String.self)),
          GraphQLField("gardenPlantIds", type: .list(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(careTypeId: Int? = nil, careTypeName: String? = nil, nextDate: String? = nil, status: String? = nil, gardenName: String? = nil, gardenPlantIds: [String?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Schedule", "careTypeId": careTypeId, "careTypeName": careTypeName, "nextDate": nextDate, "status": status, "gardenName": gardenName, "gardenPlantIds": gardenPlantIds])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var careTypeId: Int? {
        get {
          return resultMap["careTypeId"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "careTypeId")
        }
      }

      public var careTypeName: String? {
        get {
          return resultMap["careTypeName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "careTypeName")
        }
      }

      public var nextDate: String? {
        get {
          return resultMap["nextDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nextDate")
        }
      }

      public var status: String? {
        get {
          return resultMap["status"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var gardenName: String? {
        get {
          return resultMap["gardenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gardenName")
        }
      }

      public var gardenPlantIds: [String?]? {
        get {
          return resultMap["gardenPlantIds"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "gardenPlantIds")
        }
      }
    }
  }
}

public final class StartDiagnoseQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query StartDiagnose($mediaId: String!) {
      startDiagnose(mediaId: $mediaId) {
        __typename
        id
        Plant {
          __typename
          latinName
          names
          plantImages {
            __typename
            id
            urlIosFull
            urlIosPrev
          }
        }
        Disease {
          __typename
          id
          name
          description
        }
      }
    }
    """

  public let operationName: String = "StartDiagnose"

  public var mediaId: String

  public init(mediaId: String) {
    self.mediaId = mediaId
  }

  public var variables: GraphQLMap? {
    return ["mediaId": mediaId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("startDiagnose", arguments: ["mediaId": GraphQLVariable("mediaId")], type: .object(StartDiagnose.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(startDiagnose: StartDiagnose? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "startDiagnose": startDiagnose.flatMap { (value: StartDiagnose) -> ResultMap in value.resultMap }])
    }

    public var startDiagnose: StartDiagnose? {
      get {
        return (resultMap["startDiagnose"] as? ResultMap).flatMap { StartDiagnose(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "startDiagnose")
      }
    }

    public struct StartDiagnose: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiagnoseResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("Plant", type: .object(Plant.selections)),
          GraphQLField("Disease", type: .object(Disease.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, plant: Plant? = nil, disease: Disease? = nil) {
        self.init(unsafeResultMap: ["__typename": "DiagnoseResult", "id": id, "Plant": plant.flatMap { (value: Plant) -> ResultMap in value.resultMap }, "Disease": disease.flatMap { (value: Disease) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var plant: Plant? {
        get {
          return (resultMap["Plant"] as? ResultMap).flatMap { Plant(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Plant")
        }
      }

      public var disease: Disease? {
        get {
          return (resultMap["Disease"] as? ResultMap).flatMap { Disease(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Disease")
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Plant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("latinName", type: .scalar(String.self)),
            GraphQLField("names", type: .scalar(String.self)),
            GraphQLField("plantImages", type: .list(.object(PlantImage.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latinName: String? = nil, names: String? = nil, plantImages: [PlantImage?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "Plant", "latinName": latinName, "names": names, "plantImages": plantImages.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latinName: String? {
          get {
            return resultMap["latinName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "latinName")
          }
        }

        public var names: String? {
          get {
            return resultMap["names"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "names")
          }
        }

        public var plantImages: [PlantImage?]? {
          get {
            return (resultMap["plantImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantImage?] in value.map { (value: ResultMap?) -> PlantImage? in value.flatMap { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, forKey: "plantImages")
          }
        }

        public struct PlantImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }
        }
      }

      public struct Disease: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Disease"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, description: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Disease", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }
      }
    }
  }
}

public final class StartRecognizeQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query StartRecognize($mediaId: String!) {
      startRecognize(mediaId: $mediaId) {
        __typename
        recognizeId
        plants {
          __typename
          PlantCares {
            __typename
            count
            id
            period
            CareType {
              __typename
              id
              name
            }
          }
          Climate {
            __typename
            deciduous
            habit
            hardiness
            height
            moisture
            ph
            shade
            soil
          }
          descriptionFull
          descriptionWikiHtml
          id
          isFavourite
          latinName
          plantImages {
            __typename
            id
            urlIosFull
            urlIosPrev
          }
          names
          wikiUrl
        }
      }
    }
    """

  public let operationName: String = "StartRecognize"

  public var mediaId: String

  public init(mediaId: String) {
    self.mediaId = mediaId
  }

  public var variables: GraphQLMap? {
    return ["mediaId": mediaId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("startRecognize", arguments: ["mediaId": GraphQLVariable("mediaId")], type: .object(StartRecognize.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(startRecognize: StartRecognize? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "startRecognize": startRecognize.flatMap { (value: StartRecognize) -> ResultMap in value.resultMap }])
    }

    public var startRecognize: StartRecognize? {
      get {
        return (resultMap["startRecognize"] as? ResultMap).flatMap { StartRecognize(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "startRecognize")
      }
    }

    public struct StartRecognize: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RecognizeResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("recognizeId", type: .scalar(String.self)),
          GraphQLField("plants", type: .list(.object(Plant.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(recognizeId: String? = nil, plants: [Plant?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "RecognizeResponse", "recognizeId": recognizeId, "plants": plants.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var recognizeId: String? {
        get {
          return resultMap["recognizeId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "recognizeId")
        }
      }

      public var plants: [Plant?]? {
        get {
          return (resultMap["plants"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Plant?] in value.map { (value: ResultMap?) -> Plant? in value.flatMap { (value: ResultMap) -> Plant in Plant(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Plant?]) -> [ResultMap?] in value.map { (value: Plant?) -> ResultMap? in value.flatMap { (value: Plant) -> ResultMap in value.resultMap } } }, forKey: "plants")
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Plant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("PlantCares", type: .list(.object(PlantCare.selections))),
            GraphQLField("Climate", type: .object(Climate.selections)),
            GraphQLField("descriptionFull", type: .scalar(String.self)),
            GraphQLField("descriptionWikiHtml", type: .scalar(String.self)),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("isFavourite", type: .scalar(Bool.self)),
            GraphQLField("latinName", type: .scalar(String.self)),
            GraphQLField("plantImages", type: .list(.object(PlantImage.selections))),
            GraphQLField("names", type: .scalar(String.self)),
            GraphQLField("wikiUrl", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(plantCares: [PlantCare?]? = nil, climate: Climate? = nil, descriptionFull: String? = nil, descriptionWikiHtml: String? = nil, id: GraphQLID? = nil, isFavourite: Bool? = nil, latinName: String? = nil, plantImages: [PlantImage?]? = nil, names: String? = nil, wikiUrl: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Plant", "PlantCares": plantCares.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, "Climate": climate.flatMap { (value: Climate) -> ResultMap in value.resultMap }, "descriptionFull": descriptionFull, "descriptionWikiHtml": descriptionWikiHtml, "id": id, "isFavourite": isFavourite, "latinName": latinName, "plantImages": plantImages.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, "names": names, "wikiUrl": wikiUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var plantCares: [PlantCare?]? {
          get {
            return (resultMap["PlantCares"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantCare?] in value.map { (value: ResultMap?) -> PlantCare? in value.flatMap { (value: ResultMap) -> PlantCare in PlantCare(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantCare?]) -> [ResultMap?] in value.map { (value: PlantCare?) -> ResultMap? in value.flatMap { (value: PlantCare) -> ResultMap in value.resultMap } } }, forKey: "PlantCares")
          }
        }

        public var climate: Climate? {
          get {
            return (resultMap["Climate"] as? ResultMap).flatMap { Climate(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "Climate")
          }
        }

        public var descriptionFull: String? {
          get {
            return resultMap["descriptionFull"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionFull")
          }
        }

        public var descriptionWikiHtml: String? {
          get {
            return resultMap["descriptionWikiHtml"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionWikiHtml")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var isFavourite: Bool? {
          get {
            return resultMap["isFavourite"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isFavourite")
          }
        }

        public var latinName: String? {
          get {
            return resultMap["latinName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "latinName")
          }
        }

        public var plantImages: [PlantImage?]? {
          get {
            return (resultMap["plantImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PlantImage?] in value.map { (value: ResultMap?) -> PlantImage? in value.flatMap { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PlantImage?]) -> [ResultMap?] in value.map { (value: PlantImage?) -> ResultMap? in value.flatMap { (value: PlantImage) -> ResultMap in value.resultMap } } }, forKey: "plantImages")
          }
        }

        public var names: String? {
          get {
            return resultMap["names"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "names")
          }
        }

        public var wikiUrl: String? {
          get {
            return resultMap["wikiUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "wikiUrl")
          }
        }

        public struct PlantCare: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantCare"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .scalar(Int.self)),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("period", type: .scalar(PeriodType.self)),
              GraphQLField("CareType", type: .object(CareType.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(count: Int? = nil, id: GraphQLID? = nil, period: PeriodType? = nil, careType: CareType? = nil) {
            self.init(unsafeResultMap: ["__typename": "PlantCare", "count": count, "id": id, "period": period, "CareType": careType.flatMap { (value: CareType) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var count: Int? {
            get {
              return resultMap["count"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "count")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var period: PeriodType? {
            get {
              return resultMap["period"] as? PeriodType
            }
            set {
              resultMap.updateValue(newValue, forKey: "period")
            }
          }

          public var careType: CareType? {
            get {
              return (resultMap["CareType"] as? ResultMap).flatMap { CareType(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "CareType")
            }
          }

          public struct CareType: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CareType"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "CareType", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }

        public struct Climate: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Climate"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("deciduous", type: .scalar(ClimateDeciduous.self)),
              GraphQLField("habit", type: .scalar(ClimateHabit.self)),
              GraphQLField("hardiness", type: .scalar(Int.self)),
              GraphQLField("height", type: .scalar(Int.self)),
              GraphQLField("moisture", type: .scalar(ClimateMoisture.self)),
              GraphQLField("ph", type: .scalar(ClimatePh.self)),
              GraphQLField("shade", type: .scalar(ClimateShade.self)),
              GraphQLField("soil", type: .scalar(ClimateSoil.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(deciduous: ClimateDeciduous? = nil, habit: ClimateHabit? = nil, hardiness: Int? = nil, height: Int? = nil, moisture: ClimateMoisture? = nil, ph: ClimatePh? = nil, shade: ClimateShade? = nil, soil: ClimateSoil? = nil) {
            self.init(unsafeResultMap: ["__typename": "Climate", "deciduous": deciduous, "habit": habit, "hardiness": hardiness, "height": height, "moisture": moisture, "ph": ph, "shade": shade, "soil": soil])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var deciduous: ClimateDeciduous? {
            get {
              return resultMap["deciduous"] as? ClimateDeciduous
            }
            set {
              resultMap.updateValue(newValue, forKey: "deciduous")
            }
          }

          public var habit: ClimateHabit? {
            get {
              return resultMap["habit"] as? ClimateHabit
            }
            set {
              resultMap.updateValue(newValue, forKey: "habit")
            }
          }

          public var hardiness: Int? {
            get {
              return resultMap["hardiness"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "hardiness")
            }
          }

          public var height: Int? {
            get {
              return resultMap["height"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "height")
            }
          }

          public var moisture: ClimateMoisture? {
            get {
              return resultMap["moisture"] as? ClimateMoisture
            }
            set {
              resultMap.updateValue(newValue, forKey: "moisture")
            }
          }

          public var ph: ClimatePh? {
            get {
              return resultMap["ph"] as? ClimatePh
            }
            set {
              resultMap.updateValue(newValue, forKey: "ph")
            }
          }

          public var shade: ClimateShade? {
            get {
              return resultMap["shade"] as? ClimateShade
            }
            set {
              resultMap.updateValue(newValue, forKey: "shade")
            }
          }

          public var soil: ClimateSoil? {
            get {
              return resultMap["soil"] as? ClimateSoil
            }
            set {
              resultMap.updateValue(newValue, forKey: "soil")
            }
          }
        }

        public struct PlantImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("urlIosFull", type: .scalar(String.self)),
              GraphQLField("urlIosPrev", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var urlIosFull: String? {
            get {
              return resultMap["urlIosFull"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosFull")
            }
          }

          public var urlIosPrev: String? {
            get {
              return resultMap["urlIosPrev"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "urlIosPrev")
            }
          }
        }
      }
    }
  }
}

public final class UploadMediaMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UploadMedia($image: Upload!, $notes: String) {
      uploadMedia(image: $image, notes: $notes) {
        __typename
        id
        urlIosFull
        urlIosPrev
      }
    }
    """

  public let operationName: String = "UploadMedia"

  public var image: String
  public var notes: String?

  public init(image: String, notes: String? = nil) {
    self.image = image
    self.notes = notes
  }

  public var variables: GraphQLMap? {
    return ["image": image, "notes": notes]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("uploadMedia", arguments: ["image": GraphQLVariable("image"), "notes": GraphQLVariable("notes")], type: .object(UploadMedium.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(uploadMedia: UploadMedium? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "uploadMedia": uploadMedia.flatMap { (value: UploadMedium) -> ResultMap in value.resultMap }])
    }

    public var uploadMedia: UploadMedium? {
      get {
        return (resultMap["uploadMedia"] as? ResultMap).flatMap { UploadMedium(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "uploadMedia")
      }
    }

    public struct UploadMedium: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("urlIosFull", type: .scalar(String.self)),
          GraphQLField("urlIosPrev", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, urlIosFull: String? = nil, urlIosPrev: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "MediaModel", "id": id, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var urlIosFull: String? {
        get {
          return resultMap["urlIosFull"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosFull")
        }
      }

      public var urlIosPrev: String? {
        get {
          return resultMap["urlIosPrev"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosPrev")
        }
      }
    }
  }
}
