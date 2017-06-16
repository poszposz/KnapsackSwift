//
//  KnapsackRandomSolver.swift
//  Knapsack
//
//  Created by Jan Posz on 29.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation

class KnapsackRandomSolver: KnapsackSolverType {
    
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
        let result = solve(maximumWeight: maximumWeight, items: availableItems, count: availableItems.count)
        solveTime = Date().timeIntervalSince(startDate)
        return result
    }
    
    func solve(maximumWeight: Int, items: [KnapsackItem], count: Int) -> Int {
        var currentCapacity = 0
        while currentCapacity <= maximumWeight {
            let item = items[(Int(arc4random()) % items.count)]
            currentCapacity = currentCapacity + item.weight
        }
        print("Result random: \(currentCapacity)")
        return currentCapacity
    }
}
