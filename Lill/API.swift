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

public enum Social: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case `none`
  case fb
  case google
  case apple
  case instagram
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "NONE": self = .none
      case "FB": self = .fb
      case "GOOGLE": self = .google
      case "APPLE": self = .apple
      case "INSTAGRAM": self = .instagram
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .none: return "NONE"
      case .fb: return "FB"
      case .google: return "GOOGLE"
      case .apple: return "APPLE"
      case .instagram: return "INSTAGRAM"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Social, rhs: Social) -> Bool {
    switch (lhs, rhs) {
      case (.none, .none): return true
      case (.fb, .fb): return true
      case (.google, .google): return true
      case (.apple, .apple): return true
      case (.instagram, .instagram): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Social] {
    return [
      .none,
      .fb,
      .google,
      .apple,
      .instagram,
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
      public static let possibleTypes: [String] = ["CatalogPlants"]

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
        self.init(unsafeResultMap: ["__typename": "CatalogPlants", "pagination": pagination.resultMap, "totalFavorites": totalFavorites, "plants": plants.map { (value: Plant) -> ResultMap in value.resultMap }])
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
        public static let possibleTypes: [String] = ["PlantModel"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.object(Description.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, description: Description) {
          self.init(unsafeResultMap: ["__typename": "PlantModel", "id": id, "description": description.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
          GraphQLField("avatar", type: .nonNull(.scalar(String.self))),
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

      public init(avatar: String, barer: String, id: String, lang: Lang, name: String, social: Social) {
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
      public var avatar: String {
        get {
          return resultMap["avatar"]! as! String
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
