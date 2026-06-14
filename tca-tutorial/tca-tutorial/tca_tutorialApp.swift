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
    // Use AppFeature
//    static let store = Store(initialState: AppFeature.State()) {
//      AppFeature()
//    }
//
//    var body: some Scene {
//        WindowGroup {
//            AppView(store: tca_tutorialApp.store)
//        }
//    }
    
    // Use ContactsFeature
    static let store = Store(initialState: ContactsFeature.State()) {
      ContactsFeature()
    }

    var body: some Scene {
        WindowGroup {
            ContactsView(store: tca_tutorialApp.store)
        }
    }
}
