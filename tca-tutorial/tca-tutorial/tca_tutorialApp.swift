//
//  tca_tutorialApp.swift
//  tca-tutorial
//
//  Created by Hiroshi Oshiro on 2026/06/11.
//

import SwiftUI
import ComposableArchitecture

@main
struct tca_tutorialApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
      CounterFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CounterView(store: tca_tutorialApp.store)
        }
    }
}
