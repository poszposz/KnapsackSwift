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
    var solveTime:          TimeInterval?
    
    var current:            Int
    
    required init(maximumWeight: Int, availableItems: [KnapsackItem]) {
        self.maximumWeight = maximumWeight
        self.availableItems = availableItems
        current = availableItems.count
    }
    
    func solve() -> Int {
        if availableItems.count == 0 || maximumWeight == 0 {
            return 0
        }
        let item = availableItems[current - 1]
        if item.weight > maximumWeight {
            current = current - 1
            return solve()
        }
        
        let x = item.weight + solve()
        return 0
    }
    
    
//    else return max( val[n-1] + knapSack(W-wt[n-1], wt, val, n-1), knapSack(W, wt, val, n-1));
}
