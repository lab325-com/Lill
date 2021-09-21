// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public enum Social: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case fb
  case google
  case apple
  case instagram
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FB": self = .fb
      case "GOOGLE": self = .google
      case "APPLE": self = .apple
      case "INSTAGRAM": self = .instagram
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .fb: return "FB"
      case .google: return "GOOGLE"
      case .apple: return "APPLE"
      case .instagram: return "INSTAGRAM"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Social, rhs: Social) -> Bool {
    switch (lhs, rhs) {
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

    /// ## Example:
    /// ```json
    /// mutation login{
    /// login(
    /// social:fb,
    /// udid:"frytrg-jh22-jnc9jdnckj",
    /// socialToken:"ff222422222"
    /// firebaseId:"rrrrr"
    /// ){
    /// avatar
    /// barer
    /// id
    /// lang
    /// name
    /// }
    /// }
    /// ```
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
