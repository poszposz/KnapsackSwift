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
    
    init(cost: Int, weight: Int) {
        self.cost = cost
        self.weight = weight
    }
    
    var description: String {
        return "Weight : \(weight), cost: \(cost)"
    }
}
