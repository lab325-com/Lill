// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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

public enum MediaTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case plant
  case avatar
  case myplant
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "PLANT": self = .plant
      case "AVATAR": self = .avatar
      case "MYPLANT": self = .myplant
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .plant: return "PLANT"
      case .avatar: return "AVATAR"
      case .myplant: return "MYPLANT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaTypes, rhs: MediaTypes) -> Bool {
    switch (lhs, rhs) {
      case (.plant, .plant): return true
      case (.avatar, .avatar): return true
      case (.myplant, .myplant): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaTypes] {
    return [
      .plant,
      .avatar,
      .myplant,
    ]
  }
}

public enum Period: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case week
  case month
  case day
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "WEEK": self = .week
      case "MONTH": self = .month
      case "DAY": self = .day
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .week: return "WEEK"
      case .month: return "MONTH"
      case .day: return "DAY"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Period, rhs: Period) -> Bool {
    switch (lhs, rhs) {
      case (.week, .week): return true
      case (.month, .month): return true
      case (.day, .day): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Period] {
    return [
      .week,
      .month,
      .day,
    ]
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
  case en
  case `is`
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "EN": self = .en
      case "IS": self = .is
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .en: return "EN"
      case .is: return "IS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Lang, rhs: Lang) -> Bool {
    switch (lhs, rhs) {
      case (.en, .en): return true
      case (.is, .is): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Lang] {
    return [
      .en,
      .is,
    ]
  }
}

public final class GetCatalogPlantsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetCatalogPlants($pagination: InputPagination!, $search: String!) {
      getCatalogPlants(pagination: $pagination, search: $search) {
        __typename
        pagination {
          __typename
          limit
          nextPageExist
          ofset
          prevPageExist
          totalPages
        }
        plants {
          __typename
          description {
            __typename
            is_poisonous
            is_weed
            latinName
            name {
              __typename
              en
              ru
            }
            plantImages {
              __typename
              media_id
              type
              urlAndroidPhone
              urlAndroidTablet
              urlIosPhone
              urlIosTablet
            }
            invitation {
              __typename
              en
              ru
            }
            descriptionFull {
              __typename
              en
              ru
            }
            climat {
              __typename
              absolute_min_temp
              difficulty {
                __typename
                en
                ru
              }
              dormancy {
                __typename
                en
                ru
              }
              humidity {
                __typename
                en
                ru
              }
              light {
                __typename
                en
                ru
              }
              light_secondary {
                __typename
                en
                ru
              }
              pet_toxic
              poison_type {
                __typename
                en
                ru
              }
              temp_max
              temp_min
              zone_max
              zone_min
            }
            care {
              __typename
              humidity {
                __typename
                count
                period
              }
              misting {
                __typename
                count
                period
              }
              rotating {
                __typename
                count
                period
              }
              watering {
                __typename
                count
                period
              }
            }
          }
          id
        }
      }
    }
    """

  public let operationName: String = "GetCatalogPlants"

  public var pagination: InputPagination
  public var search: String

  public init(pagination: InputPagination, search: String) {
    self.pagination = pagination
    self.search = search
  }

  public var variables: GraphQLMap? {
    return ["pagination": pagination, "search": search]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getCatalogPlants", arguments: ["pagination": GraphQLVariable("pagination"), "search": GraphQLVariable("search")], type: .object(GetCatalogPlant.selections)),
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
      public static let possibleTypes: [String] = ["CatalogPlants"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pagination", type: .nonNull(.object(Pagination.selections))),
          GraphQLField("plants", type: .nonNull(.list(.nonNull(.object(Plant.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination, plants: [Plant]) {
        self.init(unsafeResultMap: ["__typename": "CatalogPlants", "pagination": pagination.resultMap, "plants": plants.map { (value: Plant) -> ResultMap in value.resultMap }])
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
        public static let possibleTypes: [String] = ["PlantModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.object(Description.selections))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(description: Description, id: String) {
          self.init(unsafeResultMap: ["__typename": "PlantModel", "description": description.resultMap, "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public struct Description: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PlantDescriptionModel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("is_poisonous", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("is_weed", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("latinName", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .nonNull(.object(Name.selections))),
              GraphQLField("plantImages", type: .nonNull(.list(.nonNull(.object(PlantImage.selections))))),
              GraphQLField("invitation", type: .nonNull(.object(Invitation.selections))),
              GraphQLField("descriptionFull", type: .nonNull(.object(DescriptionFull.selections))),
              GraphQLField("climat", type: .nonNull(.object(Climat.selections))),
              GraphQLField("care", type: .nonNull(.object(Care.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(isPoisonous: Bool, isWeed: Bool, latinName: String, name: Name, plantImages: [PlantImage], invitation: Invitation, descriptionFull: DescriptionFull, climat: Climat, care: Care) {
            self.init(unsafeResultMap: ["__typename": "PlantDescriptionModel", "is_poisonous": isPoisonous, "is_weed": isWeed, "latinName": latinName, "name": name.resultMap, "plantImages": plantImages.map { (value: PlantImage) -> ResultMap in value.resultMap }, "invitation": invitation.resultMap, "descriptionFull": descriptionFull.resultMap, "climat": climat.resultMap, "care": care.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var isPoisonous: Bool {
            get {
              return resultMap["is_poisonous"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "is_poisonous")
            }
          }

          public var isWeed: Bool {
            get {
              return resultMap["is_weed"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "is_weed")
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

          public var name: Name {
            get {
              return Name(unsafeResultMap: resultMap["name"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "name")
            }
          }

          public var plantImages: [PlantImage] {
            get {
              return (resultMap["plantImages"] as! [ResultMap]).map { (value: ResultMap) -> PlantImage in PlantImage(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: PlantImage) -> ResultMap in value.resultMap }, forKey: "plantImages")
            }
          }

          public var invitation: Invitation {
            get {
              return Invitation(unsafeResultMap: resultMap["invitation"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "invitation")
            }
          }

          public var descriptionFull: DescriptionFull {
            get {
              return DescriptionFull(unsafeResultMap: resultMap["descriptionFull"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "descriptionFull")
            }
          }

          public var climat: Climat {
            get {
              return Climat(unsafeResultMap: resultMap["climat"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "climat")
            }
          }

          public var care: Care {
            get {
              return Care(unsafeResultMap: resultMap["care"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "care")
            }
          }

          public struct Name: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["name"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("en", type: .nonNull(.scalar(String.self))),
                GraphQLField("ru", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(en: String, ru: String) {
              self.init(unsafeResultMap: ["__typename": "name", "en": en, "ru": ru])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var en: String {
              get {
                return resultMap["en"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "en")
              }
            }

            public var ru: String {
              get {
                return resultMap["ru"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "ru")
              }
            }
          }

          public struct PlantImage: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("media_id", type: .scalar(GraphQLID.self)),
                GraphQLField("type", type: .scalar(MediaTypes.self)),
                GraphQLField("urlAndroidPhone", type: .nonNull(.scalar(String.self))),
                GraphQLField("urlAndroidTablet", type: .nonNull(.scalar(String.self))),
                GraphQLField("urlIosPhone", type: .nonNull(.scalar(String.self))),
                GraphQLField("urlIosTablet", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(mediaId: GraphQLID? = nil, type: MediaTypes? = nil, urlAndroidPhone: String, urlAndroidTablet: String, urlIosPhone: String, urlIosTablet: String) {
              self.init(unsafeResultMap: ["__typename": "MediaModel", "media_id": mediaId, "type": type, "urlAndroidPhone": urlAndroidPhone, "urlAndroidTablet": urlAndroidTablet, "urlIosPhone": urlIosPhone, "urlIosTablet": urlIosTablet])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var mediaId: GraphQLID? {
              get {
                return resultMap["media_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "media_id")
              }
            }

            public var type: MediaTypes? {
              get {
                return resultMap["type"] as? MediaTypes
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            public var urlAndroidPhone: String {
              get {
                return resultMap["urlAndroidPhone"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlAndroidPhone")
              }
            }

            public var urlAndroidTablet: String {
              get {
                return resultMap["urlAndroidTablet"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlAndroidTablet")
              }
            }

            public var urlIosPhone: String {
              get {
                return resultMap["urlIosPhone"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosPhone")
              }
            }

            public var urlIosTablet: String {
              get {
                return resultMap["urlIosTablet"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "urlIosTablet")
              }
            }
          }

          public struct Invitation: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["invitation"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("en", type: .nonNull(.scalar(String.self))),
                GraphQLField("ru", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(en: String, ru: String) {
              self.init(unsafeResultMap: ["__typename": "invitation", "en": en, "ru": ru])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var en: String {
              get {
                return resultMap["en"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "en")
              }
            }

            public var ru: String {
              get {
                return resultMap["ru"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "ru")
              }
            }
          }

          public struct DescriptionFull: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["descriptionFull"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("en", type: .nonNull(.scalar(String.self))),
                GraphQLField("ru", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(en: String, ru: String) {
              self.init(unsafeResultMap: ["__typename": "descriptionFull", "en": en, "ru": ru])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var en: String {
              get {
                return resultMap["en"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "en")
              }
            }

            public var ru: String {
              get {
                return resultMap["ru"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "ru")
              }
            }
          }

          public struct Climat: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["PlantDescriptionClimatModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("absolute_min_temp", type: .scalar(String.self)),
                GraphQLField("difficulty", type: .nonNull(.object(Difficulty.selections))),
                GraphQLField("dormancy", type: .nonNull(.object(Dormancy.selections))),
                GraphQLField("humidity", type: .nonNull(.object(Humidity.selections))),
                GraphQLField("light", type: .nonNull(.object(Light.selections))),
                GraphQLField("light_secondary", type: .nonNull(.object(LightSecondary.selections))),
                GraphQLField("pet_toxic", type: .nonNull(.scalar(Bool.self))),
                GraphQLField("poison_type", type: .nonNull(.object(PoisonType.selections))),
                GraphQLField("temp_max", type: .nonNull(.scalar(Int.self))),
                GraphQLField("temp_min", type: .nonNull(.scalar(Int.self))),
                GraphQLField("zone_max", type: .nonNull(.scalar(String.self))),
                GraphQLField("zone_min", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(absoluteMinTemp: String? = nil, difficulty: Difficulty, dormancy: Dormancy, humidity: Humidity, light: Light, lightSecondary: LightSecondary, petToxic: Bool, poisonType: PoisonType, tempMax: Int, tempMin: Int, zoneMax: String, zoneMin: String) {
              self.init(unsafeResultMap: ["__typename": "PlantDescriptionClimatModel", "absolute_min_temp": absoluteMinTemp, "difficulty": difficulty.resultMap, "dormancy": dormancy.resultMap, "humidity": humidity.resultMap, "light": light.resultMap, "light_secondary": lightSecondary.resultMap, "pet_toxic": petToxic, "poison_type": poisonType.resultMap, "temp_max": tempMax, "temp_min": tempMin, "zone_max": zoneMax, "zone_min": zoneMin])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var absoluteMinTemp: String? {
              get {
                return resultMap["absolute_min_temp"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "absolute_min_temp")
              }
            }

            public var difficulty: Difficulty {
              get {
                return Difficulty(unsafeResultMap: resultMap["difficulty"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "difficulty")
              }
            }

            public var dormancy: Dormancy {
              get {
                return Dormancy(unsafeResultMap: resultMap["dormancy"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "dormancy")
              }
            }

            public var humidity: Humidity {
              get {
                return Humidity(unsafeResultMap: resultMap["humidity"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "humidity")
              }
            }

            public var light: Light {
              get {
                return Light(unsafeResultMap: resultMap["light"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "light")
              }
            }

            public var lightSecondary: LightSecondary {
              get {
                return LightSecondary(unsafeResultMap: resultMap["light_secondary"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "light_secondary")
              }
            }

            public var petToxic: Bool {
              get {
                return resultMap["pet_toxic"]! as! Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "pet_toxic")
              }
            }

            public var poisonType: PoisonType {
              get {
                return PoisonType(unsafeResultMap: resultMap["poison_type"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "poison_type")
              }
            }

            public var tempMax: Int {
              get {
                return resultMap["temp_max"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "temp_max")
              }
            }

            public var tempMin: Int {
              get {
                return resultMap["temp_min"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "temp_min")
              }
            }

            public var zoneMax: String {
              get {
                return resultMap["zone_max"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "zone_max")
              }
            }

            public var zoneMin: String {
              get {
                return resultMap["zone_min"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "zone_min")
              }
            }

            public struct Difficulty: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["difficulty"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("en", type: .scalar(String.self)),
                  GraphQLField("ru", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(en: String? = nil, ru: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "difficulty", "en": en, "ru": ru])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var en: String? {
                get {
                  return resultMap["en"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "en")
                }
              }

              public var ru: String? {
                get {
                  return resultMap["ru"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ru")
                }
              }
            }

            public struct Dormancy: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["dormancy"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("en", type: .scalar(String.self)),
                  GraphQLField("ru", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(en: String? = nil, ru: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "dormancy", "en": en, "ru": ru])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var en: String? {
                get {
                  return resultMap["en"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "en")
                }
              }

              public var ru: String? {
                get {
                  return resultMap["ru"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ru")
                }
              }
            }

            public struct Humidity: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["humidity"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("en", type: .scalar(String.self)),
                  GraphQLField("ru", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(en: String? = nil, ru: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "humidity", "en": en, "ru": ru])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var en: String? {
                get {
                  return resultMap["en"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "en")
                }
              }

              public var ru: String? {
                get {
                  return resultMap["ru"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ru")
                }
              }
            }

            public struct Light: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["light"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("en", type: .scalar(String.self)),
                  GraphQLField("ru", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(en: String? = nil, ru: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "light", "en": en, "ru": ru])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var en: String? {
                get {
                  return resultMap["en"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "en")
                }
              }

              public var ru: String? {
                get {
                  return resultMap["ru"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ru")
                }
              }
            }

            public struct LightSecondary: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["light_secondary"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("en", type: .scalar(String.self)),
                  GraphQLField("ru", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(en: String? = nil, ru: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "light_secondary", "en": en, "ru": ru])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var en: String? {
                get {
                  return resultMap["en"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "en")
                }
              }

              public var ru: String? {
                get {
                  return resultMap["ru"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ru")
                }
              }
            }

            public struct PoisonType: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["poison_type"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("en", type: .scalar(String.self)),
                  GraphQLField("ru", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(en: String? = nil, ru: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "poison_type", "en": en, "ru": ru])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var en: String? {
                get {
                  return resultMap["en"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "en")
                }
              }

              public var ru: String? {
                get {
                  return resultMap["ru"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ru")
                }
              }
            }
          }

          public struct Care: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["PlantCareModel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("humidity", type: .object(Humidity.selections)),
                GraphQLField("misting", type: .object(Misting.selections)),
                GraphQLField("rotating", type: .object(Rotating.selections)),
                GraphQLField("watering", type: .object(Watering.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(humidity: Humidity? = nil, misting: Misting? = nil, rotating: Rotating? = nil, watering: Watering? = nil) {
              self.init(unsafeResultMap: ["__typename": "PlantCareModel", "humidity": humidity.flatMap { (value: Humidity) -> ResultMap in value.resultMap }, "misting": misting.flatMap { (value: Misting) -> ResultMap in value.resultMap }, "rotating": rotating.flatMap { (value: Rotating) -> ResultMap in value.resultMap }, "watering": watering.flatMap { (value: Watering) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var humidity: Humidity? {
              get {
                return (resultMap["humidity"] as? ResultMap).flatMap { Humidity(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "humidity")
              }
            }

            public var misting: Misting? {
              get {
                return (resultMap["misting"] as? ResultMap).flatMap { Misting(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "misting")
              }
            }

            public var rotating: Rotating? {
              get {
                return (resultMap["rotating"] as? ResultMap).flatMap { Rotating(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "rotating")
              }
            }

            public var watering: Watering? {
              get {
                return (resultMap["watering"] as? ResultMap).flatMap { Watering(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "watering")
              }
            }

            public struct Humidity: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["PeriodModel"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("count", type: .nonNull(.scalar(Int.self))),
                  GraphQLField("period", type: .nonNull(.scalar(Period.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(count: Int, period: Period) {
                self.init(unsafeResultMap: ["__typename": "PeriodModel", "count": count, "period": period])
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

              public var period: Period {
                get {
                  return resultMap["period"]! as! Period
                }
                set {
                  resultMap.updateValue(newValue, forKey: "period")
                }
              }
            }

            public struct Misting: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["PeriodModel"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("count", type: .nonNull(.scalar(Int.self))),
                  GraphQLField("period", type: .nonNull(.scalar(Period.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(count: Int, period: Period) {
                self.init(unsafeResultMap: ["__typename": "PeriodModel", "count": count, "period": period])
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

              public var period: Period {
                get {
                  return resultMap["period"]! as! Period
                }
                set {
                  resultMap.updateValue(newValue, forKey: "period")
                }
              }
            }

            public struct Rotating: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["PeriodModel"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("count", type: .nonNull(.scalar(Int.self))),
                  GraphQLField("period", type: .nonNull(.scalar(Period.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(count: Int, period: Period) {
                self.init(unsafeResultMap: ["__typename": "PeriodModel", "count": count, "period": period])
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

              public var period: Period {
                get {
                  return resultMap["period"]! as! Period
                }
                set {
                  resultMap.updateValue(newValue, forKey: "period")
                }
              }
            }

            public struct Watering: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["PeriodModel"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("count", type: .nonNull(.scalar(Int.self))),
                  GraphQLField("period", type: .nonNull(.scalar(Period.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(count: Int, period: Period) {
                self.init(unsafeResultMap: ["__typename": "PeriodModel", "count": count, "period": period])
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

              public var period: Period {
                get {
                  return resultMap["period"]! as! Period
                }
                set {
                  resultMap.updateValue(newValue, forKey: "period")
                }
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
    mutation login($socialToken: String!, $udid: String!, $firebaseId: String, $social: Social, $lang: Lang) {
      login(
        socialToken: $socialToken
        udid: $udid
        firebaseId: $firebaseId
        social: $social
        lang: $lang
      ) {
        __typename
        avatar
        barer
        id
        lang
        name
        social
      }
    }
    """

  public let operationName: String = "login"

  public var socialToken: String
  public var udid: String
  public var firebaseId: String?
  public var social: Social?
  public var lang: Lang?

  public init(socialToken: String, udid: String, firebaseId: String? = nil, social: Social? = nil, lang: Lang? = nil) {
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
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("barer", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("lang", type: .nonNull(.scalar(Lang.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("social", type: .nonNull(.scalar(Social.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(avatar: String? = nil, barer: String, id: String, lang: Lang, name: String, social: Social) {
        self.init(unsafeResultMap: ["__typename": "MeModel", "avatar": avatar, "barer": barer, "id": id, "lang": lang, "name": name, "social": social])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

      /// Последний токен авторизации который выдан пользователю
      public var barer: String {
        get {
          return resultMap["barer"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "barer")
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

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var social: Social {
        get {
          return resultMap["social"]! as! Social
        }
        set {
          resultMap.updateValue(newValue, forKey: "social")
        }
      }
    }
  }
}
