// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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
  case climateHabitAnnualPerennial
  case climateHabitBiennialPerennial
  case climateHabitBulb
  case climateHabitFern
  case climateHabitPerennial
  case climateHabitPerennialClimber
  case climateHabitAnnualClimber
  case climateHabitBamboo
  case climateHabitBiennial
  case climateHabitClimber
  case climateHabitShrub
  case climateHabitTree
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_HABIT_ANNUAL_PERENNIAL": self = .climateHabitAnnualPerennial
      case "CLIMATE_HABIT_BIENNIAL_PERENNIAL": self = .climateHabitBiennialPerennial
      case "CLIMATE_HABIT_BULB": self = .climateHabitBulb
      case "CLIMATE_HABIT_FERN": self = .climateHabitFern
      case "CLIMATE_HABIT_PERENNIAL": self = .climateHabitPerennial
      case "CLIMATE_HABIT_PERENNIAL_CLIMBER": self = .climateHabitPerennialClimber
      case "CLIMATE_HABIT_ANNUAL_CLIMBER": self = .climateHabitAnnualClimber
      case "CLIMATE_HABIT_BAMBOO": self = .climateHabitBamboo
      case "CLIMATE_HABIT_BIENNIAL": self = .climateHabitBiennial
      case "CLIMATE_HABIT_CLIMBER": self = .climateHabitClimber
      case "CLIMATE_HABIT_SHRUB": self = .climateHabitShrub
      case "CLIMATE_HABIT_TREE": self = .climateHabitTree
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateHabitAnnualPerennial: return "CLIMATE_HABIT_ANNUAL_PERENNIAL"
      case .climateHabitBiennialPerennial: return "CLIMATE_HABIT_BIENNIAL_PERENNIAL"
      case .climateHabitBulb: return "CLIMATE_HABIT_BULB"
      case .climateHabitFern: return "CLIMATE_HABIT_FERN"
      case .climateHabitPerennial: return "CLIMATE_HABIT_PERENNIAL"
      case .climateHabitPerennialClimber: return "CLIMATE_HABIT_PERENNIAL_CLIMBER"
      case .climateHabitAnnualClimber: return "CLIMATE_HABIT_ANNUAL_CLIMBER"
      case .climateHabitBamboo: return "CLIMATE_HABIT_BAMBOO"
      case .climateHabitBiennial: return "CLIMATE_HABIT_BIENNIAL"
      case .climateHabitClimber: return "CLIMATE_HABIT_CLIMBER"
      case .climateHabitShrub: return "CLIMATE_HABIT_SHRUB"
      case .climateHabitTree: return "CLIMATE_HABIT_TREE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateHabit, rhs: ClimateHabit) -> Bool {
    switch (lhs, rhs) {
      case (.climateHabitAnnualPerennial, .climateHabitAnnualPerennial): return true
      case (.climateHabitBiennialPerennial, .climateHabitBiennialPerennial): return true
      case (.climateHabitBulb, .climateHabitBulb): return true
      case (.climateHabitFern, .climateHabitFern): return true
      case (.climateHabitPerennial, .climateHabitPerennial): return true
      case (.climateHabitPerennialClimber, .climateHabitPerennialClimber): return true
      case (.climateHabitAnnualClimber, .climateHabitAnnualClimber): return true
      case (.climateHabitBamboo, .climateHabitBamboo): return true
      case (.climateHabitBiennial, .climateHabitBiennial): return true
      case (.climateHabitClimber, .climateHabitClimber): return true
      case (.climateHabitShrub, .climateHabitShrub): return true
      case (.climateHabitTree, .climateHabitTree): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateHabit] {
    return [
      .climateHabitAnnualPerennial,
      .climateHabitBiennialPerennial,
      .climateHabitBulb,
      .climateHabitFern,
      .climateHabitPerennial,
      .climateHabitPerennialClimber,
      .climateHabitAnnualClimber,
      .climateHabitBamboo,
      .climateHabitBiennial,
      .climateHabitClimber,
      .climateHabitShrub,
      .climateHabitTree,
    ]
  }
}

public enum ClimateMoisture: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climateMoistureMwe
  case climateMoistureMweWa
  case climateMoistureWa
  case climateMoistureWem
  case climateMoistureM
  case climateMoistureWewa
  case climateMoistureD
  case climateMoistureDm
  case climateMoistureDmw
  case climateMoistureDmwe
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_MOISTURE_MWE": self = .climateMoistureMwe
      case "CLIMATE_MOISTURE_MWEWa": self = .climateMoistureMweWa
      case "CLIMATE_MOISTURE_WA": self = .climateMoistureWa
      case "CLIMATE_MOISTURE_WEM": self = .climateMoistureWem
      case "CLIMATE_MOISTURE_M": self = .climateMoistureM
      case "CLIMATE_MOISTURE_WEWA": self = .climateMoistureWewa
      case "CLIMATE_MOISTURE_D": self = .climateMoistureD
      case "CLIMATE_MOISTURE_DM": self = .climateMoistureDm
      case "CLIMATE_MOISTURE_DMW": self = .climateMoistureDmw
      case "CLIMATE_MOISTURE_DMWE": self = .climateMoistureDmwe
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climateMoistureMwe: return "CLIMATE_MOISTURE_MWE"
      case .climateMoistureMweWa: return "CLIMATE_MOISTURE_MWEWa"
      case .climateMoistureWa: return "CLIMATE_MOISTURE_WA"
      case .climateMoistureWem: return "CLIMATE_MOISTURE_WEM"
      case .climateMoistureM: return "CLIMATE_MOISTURE_M"
      case .climateMoistureWewa: return "CLIMATE_MOISTURE_WEWA"
      case .climateMoistureD: return "CLIMATE_MOISTURE_D"
      case .climateMoistureDm: return "CLIMATE_MOISTURE_DM"
      case .climateMoistureDmw: return "CLIMATE_MOISTURE_DMW"
      case .climateMoistureDmwe: return "CLIMATE_MOISTURE_DMWE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimateMoisture, rhs: ClimateMoisture) -> Bool {
    switch (lhs, rhs) {
      case (.climateMoistureMwe, .climateMoistureMwe): return true
      case (.climateMoistureMweWa, .climateMoistureMweWa): return true
      case (.climateMoistureWa, .climateMoistureWa): return true
      case (.climateMoistureWem, .climateMoistureWem): return true
      case (.climateMoistureM, .climateMoistureM): return true
      case (.climateMoistureWewa, .climateMoistureWewa): return true
      case (.climateMoistureD, .climateMoistureD): return true
      case (.climateMoistureDm, .climateMoistureDm): return true
      case (.climateMoistureDmw, .climateMoistureDmw): return true
      case (.climateMoistureDmwe, .climateMoistureDmwe): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimateMoisture] {
    return [
      .climateMoistureMwe,
      .climateMoistureMweWa,
      .climateMoistureWa,
      .climateMoistureWem,
      .climateMoistureM,
      .climateMoistureWewa,
      .climateMoistureD,
      .climateMoistureDm,
      .climateMoistureDmw,
      .climateMoistureDmwe,
    ]
  }
}

public enum ClimatePh: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case climatePhN
  case climatePhNb
  case climatePhA
  case climatePhAn
  case climatePhAnb
  case climatePhB
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CLIMATE_PH_N": self = .climatePhN
      case "CLIMATE_PH_NB": self = .climatePhNb
      case "CLIMATE_PH_A": self = .climatePhA
      case "CLIMATE_PH_AN": self = .climatePhAn
      case "CLIMATE_PH_ANB": self = .climatePhAnb
      case "CLIMATE_PH_B": self = .climatePhB
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .climatePhN: return "CLIMATE_PH_N"
      case .climatePhNb: return "CLIMATE_PH_NB"
      case .climatePhA: return "CLIMATE_PH_A"
      case .climatePhAn: return "CLIMATE_PH_AN"
      case .climatePhAnb: return "CLIMATE_PH_ANB"
      case .climatePhB: return "CLIMATE_PH_B"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ClimatePh, rhs: ClimatePh) -> Bool {
    switch (lhs, rhs) {
      case (.climatePhN, .climatePhN): return true
      case (.climatePhNb, .climatePhNb): return true
      case (.climatePhA, .climatePhA): return true
      case (.climatePhAn, .climatePhAn): return true
      case (.climatePhAnb, .climatePhAnb): return true
      case (.climatePhB, .climatePhB): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ClimatePh] {
    return [
      .climatePhN,
      .climatePhNb,
      .climatePhA,
      .climatePhAn,
      .climatePhAnb,
      .climatePhB,
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

public struct InputPagination: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - limit
  ///   - ofset
  public init(limit: Int, ofset: Int) {
    graphQLMap = ["limit": limit, "ofset": ofset]
  }

  public var limit: Int {
    get {
      return graphQLMap["limit"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }

  public var ofset: Int {
    get {
      return graphQLMap["ofset"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ofset")
    }
  }
}

public enum Social: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case fb
  case google
  case apple
  case instagram
  case `none`
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FB": self = .fb
      case "GOOGLE": self = .google
      case "APPLE": self = .apple
      case "INSTAGRAM": self = .instagram
      case "NONE": self = .none
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .fb: return "FB"
      case .google: return "GOOGLE"
      case .apple: return "APPLE"
      case .instagram: return "INSTAGRAM"
      case .none: return "NONE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Social, rhs: Social) -> Bool {
    switch (lhs, rhs) {
      case (.fb, .fb): return true
      case (.google, .google): return true
      case (.apple, .apple): return true
      case (.instagram, .instagram): return true
      case (.none, .none): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Social] {
    return [
      .fb,
      .google,
      .apple,
      .instagram,
      .none,
    ]
  }
}

public enum Lang: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case `is`
  case en
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "IS": self = .is
      case "EN": self = .en
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .is: return "IS"
      case .en: return "EN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Lang, rhs: Lang) -> Bool {
    switch (lhs, rhs) {
      case (.is, .is): return true
      case (.en, .en): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Lang] {
    return [
      .is,
      .en,
    ]
  }
}

public struct DiagnoseInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - img
  public init(img: String) {
    graphQLMap = ["img": img]
  }

  public var img: String {
    get {
      return graphQLMap["img"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "img")
    }
  }
}

public struct RecognitionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - img
  public init(img: String) {
    graphQLMap = ["img": img]
  }

  public var img: String {
    get {
      return graphQLMap["img"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "img")
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
        cares {
          __typename
          count
          id
          period
          type {
            __typename
            id
            name
          }
        }
        climate {
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
        mainImages {
          __typename
          media_id
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
        GraphQLField("plantById", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(PlantById.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(plantById: PlantById) {
      self.init(unsafeResultMap: ["__typename": "Query", "plantById": plantById.resultMap])
    }

    /// Возвращает описание одного plants из общего каталога plants (не из моего garden! - там свой резолвер)
    public var plantById: PlantById {
      get {
        return PlantById(unsafeResultMap: resultMap["plantById"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "plantById")
      }
    }

    public struct PlantById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Plant"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cares", type: .nonNull(.list(.nonNull(.object(Care.selections))))),
          GraphQLField("climate", type: .nonNull(.object(Climate.selections))),
          GraphQLField("descriptionFull", type: .nonNull(.scalar(String.self))),
          GraphQLField("descriptionWikiHtml", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("isFavourite", type: .scalar(Bool.self)),
          GraphQLField("latinName", type: .nonNull(.scalar(String.self))),
          GraphQLField("mainImages", type: .nonNull(.list(.nonNull(.object(MainImage.selections))))),
          GraphQLField("names", type: .nonNull(.scalar(String.self))),
          GraphQLField("wikiUrl", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(cares: [Care], climate: Climate, descriptionFull: String, descriptionWikiHtml: String, id: String, isFavourite: Bool? = nil, latinName: String, mainImages: [MainImage], names: String, wikiUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Plant", "cares": cares.map { (value: Care) -> ResultMap in value.resultMap }, "climate": climate.resultMap, "descriptionFull": descriptionFull, "descriptionWikiHtml": descriptionWikiHtml, "id": id, "isFavourite": isFavourite, "latinName": latinName, "mainImages": mainImages.map { (value: MainImage) -> ResultMap in value.resultMap }, "names": names, "wikiUrl": wikiUrl])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var cares: [Care] {
        get {
          return (resultMap["cares"] as! [ResultMap]).map { (value: ResultMap) -> Care in Care(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Care) -> ResultMap in value.resultMap }, forKey: "cares")
        }
      }

      public var climate: Climate {
        get {
          return Climate(unsafeResultMap: resultMap["climate"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "climate")
        }
      }

      public var descriptionFull: String {
        get {
          return resultMap["descriptionFull"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "descriptionFull")
        }
      }

      public var descriptionWikiHtml: String {
        get {
          return resultMap["descriptionWikiHtml"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "descriptionWikiHtml")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
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

      public var latinName: String {
        get {
          return resultMap["latinName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "latinName")
        }
      }

      public var mainImages: [MainImage] {
        get {
          return (resultMap["mainImages"] as! [ResultMap]).map { (value: ResultMap) -> MainImage in MainImage(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: MainImage) -> ResultMap in value.resultMap }, forKey: "mainImages")
        }
      }

      public var names: String {
        get {
          return resultMap["names"]! as! String
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

      public struct Care: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PlantCare"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("count", type: .nonNull(.scalar(Int.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("period", type: .nonNull(.scalar(PeriodType.self))),
            GraphQLField("type", type: .nonNull(.object(`Type`.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(count: Int, id: GraphQLID? = nil, period: PeriodType, type: `Type`) {
          self.init(unsafeResultMap: ["__typename": "PlantCare", "count": count, "id": id, "period": period, "type": type.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var count: Int {
          get {
            return resultMap["count"]! as! Int
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

        public var period: PeriodType {
          get {
            return resultMap["period"]! as! PeriodType
          }
          set {
            resultMap.updateValue(newValue, forKey: "period")
          }
        }

        public var type: `Type` {
          get {
            return `Type`(unsafeResultMap: resultMap["type"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "type")
          }
        }

        public struct `Type`: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CareType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String) {
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

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
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

      public struct MainImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("media_id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("urlIosFull", type: .nonNull(.scalar(String.self))),
            GraphQLField("urlIosPrev", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(mediaId: GraphQLID, urlIosFull: String, urlIosPrev: String) {
          self.init(unsafeResultMap: ["__typename": "MediaModel", "media_id": mediaId, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var mediaId: GraphQLID {
          get {
            return resultMap["media_id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "media_id")
          }
        }

        public var urlIosFull: String {
          get {
            return resultMap["urlIosFull"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosFull")
          }
        }

        public var urlIosPrev: String {
          get {
            return resultMap["urlIosPrev"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "urlIosPrev")
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
          ofset
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
              media_id
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
        GraphQLField("getCatalogPlants", arguments: ["pagination": GraphQLVariable("pagination"), "search": GraphQLVariable("search"), "onlyFavorites": GraphQLVariable("onlyFavorites")], type: .nonNull(.object(GetCatalogPlant.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getCatalogPlants: GetCatalogPlant) {
      self.init(unsafeResultMap: ["__typename": "Query", "getCatalogPlants": getCatalogPlants.resultMap])
    }

    public var getCatalogPlants: GetCatalogPlant {
      get {
        return GetCatalogPlant(unsafeResultMap: resultMap["getCatalogPlants"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getCatalogPlants")
      }
    }

    public struct GetCatalogPlant: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ShortPlantsModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pagination", type: .nonNull(.object(Pagination.selections))),
          GraphQLField("totalFavorites", type: .nonNull(.scalar(Int.self))),
          GraphQLField("plants", type: .nonNull(.list(.nonNull(.object(Plant.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination, totalFavorites: Int, plants: [Plant]) {
        self.init(unsafeResultMap: ["__typename": "ShortPlantsModel", "pagination": pagination.resultMap, "totalFavorites": totalFavorites, "plants": plants.map { (value: Plant) -> ResultMap in value.resultMap }])
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

      public var totalFavorites: Int {
        get {
          return resultMap["totalFavorites"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalFavorites")
        }
      }

      public var plants: [Plant] {
        get {
          return (resultMap["plants"] as! [ResultMap]).map { (value: ResultMap) -> Plant in Plant(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Plant) -> ResultMap in value.resultMap }, forKey: "plants")
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Pagination"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("limit", type: .nonNull(.scalar(Int.self))),
            GraphQLField("nextPageExist", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("ofset", type: .nonNull(.scalar(Int.self))),
            GraphQLField("prevPageExist", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("totalPages", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(limit: Int, nextPageExist: Bool, ofset: Int, prevPageExist: Bool, totalPages: Int) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "limit": limit, "nextPageExist": nextPageExist, "ofset": ofset, "prevPageExist": prevPageExist, "totalPages": totalPages])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var limit: Int {
          get {
            return resultMap["limit"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "limit")
          }
        }

        public var nextPageExist: Bool {
          get {
            return resultMap["nextPageExist"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "nextPageExist")
          }
        }

        public var ofset: Int {
          get {
            return resultMap["ofset"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "ofset")
          }
        }

        public var prevPageExist: Bool {
          get {
            return resultMap["prevPageExist"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "prevPageExist")
          }
        }

        public var totalPages: Int {
          get {
            return resultMap["totalPages"]! as! Int
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
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("description", type: .nonNull(.object(Description.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, description: Description) {
          self.init(unsafeResultMap: ["__typename": "ShortPlantModel", "id": id, "description": description.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var description: Description {
          get {
            return Description(unsafeResultMap: resultMap["description"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "description")
          }
        }

        public struct Description: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantDescriptionShortModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("is_favorite", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .nonNull(.object(Image.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(isFavorite: Bool, name: String, image: Image) {
            self.init(unsafeResultMap: ["__typename": "PlantDescriptionShortModel", "is_favorite": isFavorite, "name": name, "image": image.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var isFavorite: Bool {
            get {
              return resultMap["is_favorite"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "is_favorite")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var image: Image {
            get {
              return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "image")
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("media_id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("urlIosFull", type: .nonNull(.scalar(String.self))),
                GraphQLField("urlIosPrev", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(mediaId: GraphQLID, urlIosFull: String, urlIosPrev: String) {
              self.init(unsafeResultMap: ["__typename": "MediaModel", "media_id": mediaId, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var mediaId: GraphQLID {
              get {
                return resultMap["media_id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "media_id")
              }
            }

            public var urlIosFull: String {
              get {
                return resultMap["urlIosFull"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosFull")
              }
            }

            public var urlIosPrev: String {
              get {
                return resultMap["urlIosPrev"]! as! String
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

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation login($socialToken: String!, $udid: String!, $firebaseId: String!, $social: Social!, $lang: Lang!) {
      login(
        socialToken: $socialToken
        udid: $udid
        firebaseId: $firebaseId
        social: $social
        lang: $lang
      ) {
        __typename
        access {
          __typename
          diagnosisAvaliable
          diagnosisTotal
          diagnosisUsed
          identifyTotal
          identifyUsed
          isPremium
        }
        avatar
        barer
        email
        id
        lang
        name
      }
    }
    """

  public let operationName: String = "login"

  public var socialToken: String
  public var udid: String
  public var firebaseId: String
  public var social: Social
  public var lang: Lang

  public init(socialToken: String, udid: String, firebaseId: String, social: Social, lang: Lang) {
    self.socialToken = socialToken
    self.udid = udid
    self.firebaseId = firebaseId
    self.social = social
    self.lang = lang
  }

  public var variables: GraphQLMap? {
    return ["socialToken": socialToken, "udid": udid, "firebaseId": firebaseId, "social": social, "lang": lang]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["socialToken": GraphQLVariable("socialToken"), "udid": GraphQLVariable("udid"), "firebaseId": GraphQLVariable("firebaseId"), "social": GraphQLVariable("social"), "lang": GraphQLVariable("lang")], type: .nonNull(.object(Login.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.resultMap])
    }

    /// Login будет на Rest API - это заглушка!!!!
    public var login: Login {
      get {
        return Login(unsafeResultMap: resultMap["login"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MeModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("access", type: .nonNull(.object(Access.selections))),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("barer", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("lang", type: .nonNull(.scalar(Lang.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(access: Access, avatar: String? = nil, barer: String, email: String? = nil, id: String, lang: Lang, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "MeModel", "access": access.resultMap, "avatar": avatar, "barer": barer, "email": email, "id": id, "lang": lang, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var access: Access {
        get {
          return Access(unsafeResultMap: resultMap["access"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "access")
        }
      }

      /// Ссылка на аватар юзера, который был получен из соц-сетей или загружен пользователем самостоятельно.
      /// Ссылка всегда ведет на файл на нашей стороне даже если получен из соц-сети.
      /// Тогда он выкачивается и сохраняется у нас.
      public var avatar: String? {
        get {
          return resultMap["avatar"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "avatar")
        }
      }

      public var barer: String {
        get {
          return resultMap["barer"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "barer")
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

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// ENUM указывающий на язык интерфейса пользователя. Может быть отредактирован.
      public var lang: Lang {
        get {
          return resultMap["lang"]! as! Lang
        }
        set {
          resultMap.updateValue(newValue, forKey: "lang")
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

      public struct Access: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Access"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("diagnosisAvaliable", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("diagnosisTotal", type: .nonNull(.scalar(Int.self))),
            GraphQLField("diagnosisUsed", type: .nonNull(.scalar(Int.self))),
            GraphQLField("identifyTotal", type: .nonNull(.scalar(Int.self))),
            GraphQLField("identifyUsed", type: .nonNull(.scalar(Int.self))),
            GraphQLField("isPremium", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(diagnosisAvaliable: Bool, diagnosisTotal: Int, diagnosisUsed: Int, identifyTotal: Int, identifyUsed: Int, isPremium: Bool) {
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

        public var diagnosisAvaliable: Bool {
          get {
            return resultMap["diagnosisAvaliable"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisAvaliable")
          }
        }

        public var diagnosisTotal: Int {
          get {
            return resultMap["diagnosisTotal"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisTotal")
          }
        }

        public var diagnosisUsed: Int {
          get {
            return resultMap["diagnosisUsed"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisUsed")
          }
        }

        public var identifyTotal: Int {
          get {
            return resultMap["identifyTotal"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "identifyTotal")
          }
        }

        public var identifyUsed: Int {
          get {
            return resultMap["identifyUsed"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "identifyUsed")
          }
        }

        public var isPremium: Bool {
          get {
            return resultMap["isPremium"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPremium")
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
        access {
          __typename
          diagnosisAvaliable
          diagnosisTotal
          diagnosisUsed
          identifyTotal
          identifyUsed
          isPremium
        }
        avatar
        barer
        email
        id
        lang
        name
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
        GraphQLField("me", type: .nonNull(.object(Me.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.resultMap])
    }

    /// Резолвер возвращает объект me для текущего пользователя.
    public var me: Me {
      get {
        return Me(unsafeResultMap: resultMap["me"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MeModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("access", type: .nonNull(.object(Access.selections))),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("barer", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("lang", type: .nonNull(.scalar(Lang.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(access: Access, avatar: String? = nil, barer: String, email: String? = nil, id: String, lang: Lang, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "MeModel", "access": access.resultMap, "avatar": avatar, "barer": barer, "email": email, "id": id, "lang": lang, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var access: Access {
        get {
          return Access(unsafeResultMap: resultMap["access"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "access")
        }
      }

      /// Ссылка на аватар юзера, который был получен из соц-сетей или загружен пользователем самостоятельно.
      /// Ссылка всегда ведет на файл на нашей стороне даже если получен из соц-сети.
      /// Тогда он выкачивается и сохраняется у нас.
      public var avatar: String? {
        get {
          return resultMap["avatar"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "avatar")
        }
      }

      public var barer: String {
        get {
          return resultMap["barer"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "barer")
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

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// ENUM указывающий на язык интерфейса пользователя. Может быть отредактирован.
      public var lang: Lang {
        get {
          return resultMap["lang"]! as! Lang
        }
        set {
          resultMap.updateValue(newValue, forKey: "lang")
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

      public struct Access: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Access"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("diagnosisAvaliable", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("diagnosisTotal", type: .nonNull(.scalar(Int.self))),
            GraphQLField("diagnosisUsed", type: .nonNull(.scalar(Int.self))),
            GraphQLField("identifyTotal", type: .nonNull(.scalar(Int.self))),
            GraphQLField("identifyUsed", type: .nonNull(.scalar(Int.self))),
            GraphQLField("isPremium", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(diagnosisAvaliable: Bool, diagnosisTotal: Int, diagnosisUsed: Int, identifyTotal: Int, identifyUsed: Int, isPremium: Bool) {
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

        public var diagnosisAvaliable: Bool {
          get {
            return resultMap["diagnosisAvaliable"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisAvaliable")
          }
        }

        public var diagnosisTotal: Int {
          get {
            return resultMap["diagnosisTotal"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisTotal")
          }
        }

        public var diagnosisUsed: Int {
          get {
            return resultMap["diagnosisUsed"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "diagnosisUsed")
          }
        }

        public var identifyTotal: Int {
          get {
            return resultMap["identifyTotal"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "identifyTotal")
          }
        }

        public var identifyUsed: Int {
          get {
            return resultMap["identifyUsed"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "identifyUsed")
          }
        }

        public var isPremium: Bool {
          get {
            return resultMap["isPremium"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPremium")
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
    query StartDiagnose($img: DiagnoseInput!) {
      startDiagnose(img: $img) {
        __typename
        diagnoseDescription
        diagnoseTitle
        plant {
          __typename
          id
          description {
            __typename
            is_favorite
            name
            names
            image {
              __typename
              media_id
              urlIosFull
              urlIosPrev
            }
          }
        }
      }
    }
    """

  public let operationName: String = "StartDiagnose"

  public var img: DiagnoseInput

  public init(img: DiagnoseInput) {
    self.img = img
  }

  public var variables: GraphQLMap? {
    return ["img": img]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("startDiagnose", arguments: ["img": GraphQLVariable("img")], type: .object(StartDiagnose.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(startDiagnose: StartDiagnose? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "startDiagnose": startDiagnose.flatMap { (value: StartDiagnose) -> ResultMap in value.resultMap }])
    }

    /// Принимает ссылку на картинку плента которая уже загружена на сервер через uploadMediaRecognition
    /// и возвращает объект с результатом диагностики. Или пусто если не получилось.
    public var startDiagnose: StartDiagnose? {
      get {
        return (resultMap["startDiagnose"] as? ResultMap).flatMap { StartDiagnose(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "startDiagnose")
      }
    }

    public struct StartDiagnose: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiagnosResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("diagnoseDescription", type: .nonNull(.scalar(String.self))),
          GraphQLField("diagnoseTitle", type: .nonNull(.scalar(String.self))),
          GraphQLField("plant", type: .nonNull(.object(Plant.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(diagnoseDescription: String, diagnoseTitle: String, plant: Plant) {
        self.init(unsafeResultMap: ["__typename": "DiagnosResult", "diagnoseDescription": diagnoseDescription, "diagnoseTitle": diagnoseTitle, "plant": plant.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var diagnoseDescription: String {
        get {
          return resultMap["diagnoseDescription"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "diagnoseDescription")
        }
      }

      public var diagnoseTitle: String {
        get {
          return resultMap["diagnoseTitle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "diagnoseTitle")
        }
      }

      public var plant: Plant {
        get {
          return Plant(unsafeResultMap: resultMap["plant"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "plant")
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ShortPlantModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("description", type: .nonNull(.object(Description.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, description: Description) {
          self.init(unsafeResultMap: ["__typename": "ShortPlantModel", "id": id, "description": description.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var description: Description {
          get {
            return Description(unsafeResultMap: resultMap["description"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "description")
          }
        }

        public struct Description: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantDescriptionShortModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("is_favorite", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("names", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .nonNull(.object(Image.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(isFavorite: Bool, name: String, names: String, image: Image) {
            self.init(unsafeResultMap: ["__typename": "PlantDescriptionShortModel", "is_favorite": isFavorite, "name": name, "names": names, "image": image.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var isFavorite: Bool {
            get {
              return resultMap["is_favorite"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "is_favorite")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var names: String {
            get {
              return resultMap["names"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "names")
            }
          }

          public var image: Image {
            get {
              return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "image")
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("media_id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("urlIosFull", type: .nonNull(.scalar(String.self))),
                GraphQLField("urlIosPrev", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(mediaId: GraphQLID, urlIosFull: String, urlIosPrev: String) {
              self.init(unsafeResultMap: ["__typename": "MediaModel", "media_id": mediaId, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var mediaId: GraphQLID {
              get {
                return resultMap["media_id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "media_id")
              }
            }

            public var urlIosFull: String {
              get {
                return resultMap["urlIosFull"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosFull")
              }
            }

            public var urlIosPrev: String {
              get {
                return resultMap["urlIosPrev"]! as! String
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

public final class StartRecognitionQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query StartRecognition($img: RecognitionInput!) {
      startRecognition(img: $img) {
        __typename
        plants {
          __typename
          id
          description {
            __typename
            is_favorite
            name
            image {
              __typename
              media_id
              urlIosFull
              urlIosPrev
            }
          }
        }
      }
    }
    """

  public let operationName: String = "StartRecognition"

  public var img: RecognitionInput

  public init(img: RecognitionInput) {
    self.img = img
  }

  public var variables: GraphQLMap? {
    return ["img": img]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("startRecognition", arguments: ["img": GraphQLVariable("img")], type: .nonNull(.object(StartRecognition.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(startRecognition: StartRecognition) {
      self.init(unsafeResultMap: ["__typename": "Query", "startRecognition": startRecognition.resultMap])
    }

    /// Принимает ссылку на картинку плента которая уже загружена на сервер через uploadMediaRecognition
    /// и возвращает список распознанных plants. Или пустой массив если не получилось.
    public var startRecognition: StartRecognition {
      get {
        return StartRecognition(unsafeResultMap: resultMap["startRecognition"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "startRecognition")
      }
    }

    public struct StartRecognition: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ShortPlantsModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("plants", type: .nonNull(.list(.nonNull(.object(Plant.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(plants: [Plant]) {
        self.init(unsafeResultMap: ["__typename": "ShortPlantsModel", "plants": plants.map { (value: Plant) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var plants: [Plant] {
        get {
          return (resultMap["plants"] as! [ResultMap]).map { (value: ResultMap) -> Plant in Plant(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Plant) -> ResultMap in value.resultMap }, forKey: "plants")
        }
      }

      public struct Plant: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ShortPlantModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("description", type: .nonNull(.object(Description.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, description: Description) {
          self.init(unsafeResultMap: ["__typename": "ShortPlantModel", "id": id, "description": description.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var description: Description {
          get {
            return Description(unsafeResultMap: resultMap["description"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "description")
          }
        }

        public struct Description: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantDescriptionShortModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("is_favorite", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .nonNull(.object(Image.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(isFavorite: Bool, name: String, image: Image) {
            self.init(unsafeResultMap: ["__typename": "PlantDescriptionShortModel", "is_favorite": isFavorite, "name": name, "image": image.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var isFavorite: Bool {
            get {
              return resultMap["is_favorite"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "is_favorite")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var image: Image {
            get {
              return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "image")
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("media_id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("urlIosFull", type: .nonNull(.scalar(String.self))),
                GraphQLField("urlIosPrev", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(mediaId: GraphQLID, urlIosFull: String, urlIosPrev: String) {
              self.init(unsafeResultMap: ["__typename": "MediaModel", "media_id": mediaId, "urlIosFull": urlIosFull, "urlIosPrev": urlIosPrev])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var mediaId: GraphQLID {
              get {
                return resultMap["media_id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "media_id")
              }
            }

            public var urlIosFull: String {
              get {
                return resultMap["urlIosFull"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosFull")
              }
            }

            public var urlIosPrev: String {
              get {
                return resultMap["urlIosPrev"]! as! String
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

public final class UploadMediaMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UploadMedia($img: String!) {
      uploadMedia(img: $img) {
        __typename
        urlIosFull
      }
    }
    """

  public let operationName: String = "UploadMedia"

  public var img: String

  public init(img: String) {
    self.img = img
  }

  public var variables: GraphQLMap? {
    return ["img": img]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("uploadMedia", arguments: ["img": GraphQLVariable("img")], type: .nonNull(.object(UploadMedium.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(uploadMedia: UploadMedium) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "uploadMedia": uploadMedia.resultMap])
    }

    /// Аплоад картинки на сервер, обратно получаем модель медиа
    public var uploadMedia: UploadMedium {
      get {
        return UploadMedium(unsafeResultMap: resultMap["uploadMedia"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "uploadMedia")
      }
    }

    public struct UploadMedium: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaModel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("urlIosFull", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(urlIosFull: String) {
        self.init(unsafeResultMap: ["__typename": "MediaModel", "urlIosFull": urlIosFull])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var urlIosFull: String {
        get {
          return resultMap["urlIosFull"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "urlIosFull")
        }
      }
    }
  }
}
