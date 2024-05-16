//
//  DependencyKey.swift
//  DependencyInjection
//
//  Created by YHAN on 2023/03/20.
//

import Foundation
import ComposableArchitecture

import Utils
import SearchInterface

// MARK: - DI Container

public final class DependencyContainer {
  public let appSearch: AppSearch

  public init(appSearch: AppSearch) {
    self.appSearch = appSearch
  }
}

// MARK: - Testable Values

extension DependencyContainer: TestDependencyKey {
  public static var testValue: DependencyContainer {
    .init(appSearch: AppSearchMock())
  }
}
