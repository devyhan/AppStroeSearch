//
//  DependencyKey.swift
//  DependencyInjection
//
//  Created by YHAN on 2023/03/22.
//

import Dependencies

extension DependencyValues {
  public var containor: DependencyContainer {
    get { self[DependencyContainer.self] }
    set { self[DependencyContainer.self] = newValue }
  }
}
