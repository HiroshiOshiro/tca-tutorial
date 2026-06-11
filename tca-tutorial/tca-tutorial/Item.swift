//
//  Item.swift
//  tca-tutorial
//
//  Created by Hiroshi Oshiro on 2026/06/11.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
