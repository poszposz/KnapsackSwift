//
//  KnapsackItem.swift
//  Knapsack
//
//  Created by Jan Posz on 14.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation

struct KnapsackItem: CustomStringConvertible {
    
    let weight: Int
    let cost:   Int
    let volume: Int
    
    init(cost: Int, weight: Int, volume: Int) {
        self.cost = cost
        self.weight = weight
        self.volume = volume
    }
    
    var description: String {
        return "Weight : \(weight), cost: \(cost), volume: \(volume)"
    }
}
