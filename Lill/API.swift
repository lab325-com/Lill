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

    /// Принимает ссылку на картинку плента которая уже загружена на сервер через uploadMediaRecognition и возвращает список распознанных plants. Или пустой массив если не получилось.
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

public final class UploadMediaRecognitionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UploadMediaRecognition($img: String!) {
      uploadMediaRecognition(img: $img) {
        __typename
        urlIosFull
      }
    }
    """

  public let operationName: String = "UploadMediaRecognition"

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
        GraphQLField("uploadMediaRecognition", arguments: ["img": GraphQLVariable("img")], type: .nonNull(.object(UploadMediaRecognition.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(uploadMediaRecognition: UploadMediaRecognition) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "uploadMediaRecognition": uploadMediaRecognition.resultMap])
    }

    public var uploadMediaRecognition: UploadMediaRecognition {
      get {
        return UploadMediaRecognition(unsafeResultMap: resultMap["uploadMediaRecognition"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "uploadMediaRecognition")
      }
    }

    public struct UploadMediaRecognition: GraphQLSelectionSet {
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
