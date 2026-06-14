//
//  CounterFeatureTests.swift
//  tca-tutorial
//
//  Created by Hiroshi Oshiro on 2026/06/14.
//


import ComposableArchitecture
import Testing

@testable import tca_tutorial


@MainActor
struct CounterFeatureTests {
  @Test
  func basics() async {
      let store = TestStore(initialState: CounterFeature.State()) {
          CounterFeature()
      }

      await store.send(.incrementButtonTapped) {
          $0.count = 1
      }
      await store.send(.decrementButtonTapped) {
          $0.count = 0
      }
  }
    
    
}
