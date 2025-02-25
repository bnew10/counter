//
//  Item.swift
//  Counter
//
//  Created by Bradley Newton on 7/7/24.
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
