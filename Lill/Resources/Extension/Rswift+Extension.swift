//
//  Rswift+Extension.swift
//  Lill
//
//  Created by mob325 on 01.11.2021.
//

import Foundation
import Rswift

extension StringResource {
  public func localized(_ language: String) -> String {
    guard
      let basePath = bundle.path(forResource: "Base", ofType: "lproj"),
      let baseBundle = Bundle(path: basePath)
    else {
      return self.key
    }

    let fallback = baseBundle.localizedString(forKey: key, value: key, table: tableName)

    guard
      let localizedPath = bundle.path(forResource: language, ofType: "lproj"),
      let localizedBundle = Bundle(path: localizedPath)
    else {
      return fallback
    }

    return localizedBundle.localizedString(forKey: key, value: fallback, table: tableName)
  }
}
