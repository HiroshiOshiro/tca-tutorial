//
//  NumberFactClient.swift
//  tca-tutorial
//
//  Created by Hiroshi Oshiro on 2026/06/14.
//


import ComposableArchitecture
import Foundation

struct NumberFactClient: Sendable {
    var fetch: @Sendable (Int) async throws -> String
}

extension NumberFactClient: DependencyKey {
    static let liveValue = Self(
        fetch: { number in
            let (data, _) = try await URLSession.shared
                .data(from: URL(string: "http://number-trivia.com/\(number)")!)
            return String(decoding: data, as: UTF8.self)
        }
    )
}

extension DependencyValues {
  var numberFact: NumberFactClient {
    get { self[NumberFactClient.self] }
    set { self[NumberFactClient.self] = newValue }
  }
}
