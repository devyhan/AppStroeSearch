//
//  DependencyKey.swift
//  iOS
//
//  Created by YHAN on 2023/03/20.
//

import Foundation
import ComposableArchitecture

import Search
import Networking
import Repository
import DependencyInjection

extension DependencyContainer: DependencyKey {
  public static var liveValue: DependencyContainer {
    DependencyContainer(
      appSearch: AppSearchImpl(
        apiClient: APIClientImpl(),
        dbClient: DBClientImpl(userDefatults: UserDefaults.standard)
      )
    )
  }
}
