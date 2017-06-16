//
//  KnapsackNaiveSolver.swift
//  Knapsack
//
//  Created by Jan Posz on 14.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation

class KnapsackNaiveSolver: KnapsackSolverType {
    
    var availableItems:     [KnapsackItem]
    var maximumWeight:      Int
    var maximumVolume:      Int
    var solveTime:          TimeInterval?
    
    required init(maximumWeight: Int, maximumVolume: Int, availableItems: [KnapsackItem]) {
        self.maximumWeight = maximumWeight
        self.maximumVolume = maximumVolume
        self.availableItems = availableItems
    }
    
    func solve() -> Int {
        let startDate = Date()
        let result = solve(maximumWeight: maximumWeight, maximumVolume: maximumVolume, items: availableItems, count: availableItems.count)
        solveTime = Date().timeIntervalSince(startDate)
        return result
    }
    
    func solve(maximumWeight: Int, maximumVolume: Int, items: [KnapsackItem], count: Int) -> Int {
        if count == 0 || maximumWeight == 0 || maximumVolume == 0 {
            return 0
        }
        let item = availableItems[count - 1]
        if item.weight > maximumWeight || item.volume > maximumVolume {
            return solve(maximumWeight: maximumWeight, maximumVolume: maximumVolume, items: items, count: count - 1)
        }
        
        let x = item.cost + solve(maximumWeight: maximumWeight - item.weight, maximumVolume: maximumVolume - item.volume, items: availableItems, count: count - 1)
        let y = solve(maximumWeight: maximumWeight, maximumVolume: maximumVolume, items: availableItems, count: count - 1)
        return max(x, y)
    }
}
