// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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

public struct GardenPlantCreateRecordInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - plant
  ///   - cares
  public init(plant: GardenPlantCreateInput, cares: Swift.Optional<[PlantCareCreateInput?]?> = nil) {
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

  public var cares: Swift.Optional<[PlantCareCreateInput?]?> {
    get {
      return graphQLMap["cares"] as? Swift.Optional<[PlantCareCreateInput?]?> ?? Swift.Optional<[PlantCareCreateInput?]?>.none
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
  ///   - cares
  public init(name: Swift.Optional<String?> = nil, userDescription: Swift.Optional<String?> = nil, gardenId: Swift.Optional<String?> = nil, userMainImageId: Swift.Optional<String?> = nil, cares: Swift.Optional<[PlantCareCreateInput?]?> = nil) {
    graphQLMap = ["name": name, "userDescription": userDescription, "gardenId": gardenId, "userMainImageId": userMainImageId, "cares": cares]
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

  public var cares: Swift.Optional<[PlantCareCreateInput?]?> {
    get {
      return graphQLMap["cares"] as? Swift.Optional<[PlantCareCreateInput?]?> ?? Swift.Optional<[PlantCareCreateInput?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cares")
    }
  }
}

public struct PlantCareCreateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - count
  ///   - period
  ///   - careTypeId
  ///   - index
  public init(count: Int, period: PeriodType, careTypeId: Int, index: Swift.Optional<Int?> = nil) {
    graphQLMap = ["count": count, "period": period, "careTypeId": careTypeId, "index": index]
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

  public var index: Swift.Optional<Int?> {
    get {
      return graphQLMap["index"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "index")
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

public final class PlantToGardenMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation PlantToGarden($plantId: String!, $gardenId: String!) {
      plantToGarden(plantId: $plantId, gardenId: $gardenId)
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
        GraphQLField("plantToGarden", arguments: ["plantId": GraphQLVariable("plantId"), "gardenId": GraphQLVariable("gardenId")], type: .scalar(Bool.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(plantToGarden: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "plantToGarden": plantToGarden])
    }

    public var plantToGarden: Bool? {
      get {
        return resultMap["plantToGarden"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "plantToGarden")
      }
    }
  }
}

public final class OrderCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation OrderCreate($unifiedReceipt: GraphQLJSON!) {
      orderCreate(unifiedReceipt: $unifiedReceipt)
    }
    """

  public let operationName: String = "OrderCreate"

  public var unifiedReceipt: String

  public init(unifiedReceipt: String) {
    self.unifiedReceipt = unifiedReceipt
  }

  public var variables: GraphQLMap? {
    return ["unifiedReceipt": unifiedReceipt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("orderCreate", arguments: ["unifiedReceipt": GraphQLVariable("unifiedReceipt")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(orderCreate: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "orderCreate": orderCreate])
    }

    public var orderCreate: String? {
      get {
        return resultMap["orderCreate"] as? String
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

        public init(name: String? = nil, isHappy: Bool? = nil, userMainImage: UserMainImage? = nil, gardenPlantCares: [GardenPlantCare?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "GardenPlant", "name": name, "isHappy": isHappy, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "GardenPlantCares": gardenPlantCares.flatMap { (value: [GardenPlantCare?]) -> [ResultMap?] in value.map { (value: GardenPlantCare?) -> ResultMap? in value.flatMap { (value: GardenPlantCare) -> ResultMap in value.resultMap } } }])
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
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "CareType", "name": name])
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
        Language {
          __typename
          id
          name
          nativeName
          code
          index
        }
        Gardens {
          __typename
          id
          name
          userDescription
          userMainImage {
            __typename
            id
            urlIosFull
            urlIosPrev
            urlAndroidPhone
            urlAndroidTablet
            notes
          }
          userGalleryImages {
            __typename
            id
            urlIosFull
            urlIosPrev
            urlAndroidPhone
            urlAndroidTablet
            notes
          }
          isDefault
        }
        access {
          __typename
          diagnosisAvaliable
          diagnosisTotal
          diagnosisUsed
          identifyTotal
          identifyUsed
          isPremium
        }
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
          GraphQLField("Language", type: .object(Language.selections)),
          GraphQLField("Gardens", type: .list(.object(Garden.selections))),
          GraphQLField("access", type: .object(Access.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, fullName: String? = nil, email: String? = nil, timezone: String? = nil, defaultGardenId: String? = nil, language: Language? = nil, gardens: [Garden?]? = nil, access: Access? = nil) {
        self.init(unsafeResultMap: ["__typename": "MeModel", "id": id, "fullName": fullName, "email": email, "timezone": timezone, "defaultGardenId": defaultGardenId, "Language": language.flatMap { (value: Language) -> ResultMap in value.resultMap }, "Gardens": gardens.flatMap { (value: [Garden?]) -> [ResultMap?] in value.map { (value: Garden?) -> ResultMap? in value.flatMap { (value: Garden) -> ResultMap in value.resultMap } } }, "access": access.flatMap { (value: Access) -> ResultMap in value.resultMap }])
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

      public var language: Language? {
        get {
          return (resultMap["Language"] as? ResultMap).flatMap { Language(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "Language")
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

      public struct Garden: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Garden"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("userDescription", type: .scalar(String.self)),
            GraphQLField("userMainImage", type: .object(UserMainImage.selections)),
            GraphQLField("userGalleryImages", type: .list(.object(UserGalleryImage.selections))),
            GraphQLField("isDefault", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, name: String? = nil, userDescription: String? = nil, userMainImage: UserMainImage? = nil, userGalleryImages: [UserGalleryImage?]? = nil, isDefault: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "Garden", "id": id, "name": name, "userDescription": userDescription, "userMainImage": userMainImage.flatMap { (value: UserMainImage) -> ResultMap in value.resultMap }, "userGalleryImages": userGalleryImages.flatMap { (value: [UserGalleryImage?]) -> [ResultMap?] in value.map { (value: UserGalleryImage?) -> ResultMap? in value.flatMap { (value: UserGalleryImage) -> ResultMap in value.resultMap } } }, "isDefault": isDefault])
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

        public var userMainImage: UserMainImage? {
          get {
            return (resultMap["userMainImage"] as? ResultMap).flatMap { UserMainImage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userMainImage")
          }
        }

        public var userGalleryImages: [UserGalleryImage?]? {
          get {
            return (resultMap["userGalleryImages"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [UserGalleryImage?] in value.map { (value: ResultMap?) -> UserGalleryImage? in value.flatMap { (value: ResultMap) -> UserGalleryImage in UserGalleryImage(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [UserGalleryImage?]) -> [ResultMap?] in value.map { (value: UserGalleryImage?) -> ResultMap? in value.flatMap { (value: UserGalleryImage) -> ResultMap in value.resultMap } } }, forKey: "userGalleryImages")
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

        public struct UserGalleryImage: GraphQLSelectionSet {
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
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(diagnosisAvaliable: Bool? = nil, diagnosisTotal: Int? = nil, diagnosisUsed: Int? = nil, identifyTotal: Int? = nil, identifyUsed: Int? = nil, isPremium: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "Access", "diagnosisAvaliable": diagnosisAvaliable, "diagnosisTotal": diagnosisTotal, "diagnosisUsed": diagnosisUsed, "identifyTotal": identifyTotal, "identifyUsed": identifyUsed, "isPremium": isPremium])
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
        Disease {
          __typename
          id
          name
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

      public struct Disease: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Disease"]

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
          self.init(unsafeResultMap: ["__typename": "Disease", "id": id, "name": name])
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

public final class StartRecognizeQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query StartRecognize($mediaId: String!) {
      startRecognize(mediaId: $mediaId) {
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
        GraphQLField("startRecognize", arguments: ["mediaId": GraphQLVariable("mediaId")], type: .list(.object(StartRecognize.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(startRecognize: [StartRecognize?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "startRecognize": startRecognize.flatMap { (value: [StartRecognize?]) -> [ResultMap?] in value.map { (value: StartRecognize?) -> ResultMap? in value.flatMap { (value: StartRecognize) -> ResultMap in value.resultMap } } }])
    }

    public var startRecognize: [StartRecognize?]? {
      get {
        return (resultMap["startRecognize"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [StartRecognize?] in value.map { (value: ResultMap?) -> StartRecognize? in value.flatMap { (value: ResultMap) -> StartRecognize in StartRecognize(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [StartRecognize?]) -> [ResultMap?] in value.map { (value: StartRecognize?) -> ResultMap? in value.flatMap { (value: StartRecognize) -> ResultMap in value.resultMap } } }, forKey: "startRecognize")
      }
    }

    public struct StartRecognize: GraphQLSelectionSet {
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

public final class UploadMediaMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UploadMedia($image: Upload!) {
      uploadMedia(image: $image) {
        __typename
        id
        urlIosFull
        urlIosPrev
      }
    }
    """

  public let operationName: String = "UploadMedia"

  public var image: String

  public init(image: String) {
    self.image = image
  }

  public var variables: GraphQLMap? {
    return ["image": image]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("uploadMedia", arguments: ["image": GraphQLVariable("image")], type: .object(UploadMedium.selections)),
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
