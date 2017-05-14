//
//  KnapsackDynamicSolver.swift
//  Knapsack
//
//  Created by Jan Posz on 14.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation

class KnapsackDynamicSolver: KnapsackSolverType {
    
    var availableItems: [KnapsackItem]
    var maximumWeight:  Int
    var solveTime:      TimeInterval?
    
    private var solveMatrix:    Array<Array<Int>> = [[Int]]()
    
    required init(maximumWeight: Int, availableItems: [KnapsackItem]) {
        self.maximumWeight = maximumWeight
        self.availableItems = availableItems
    }
    
    func solve() -> Int {
        let startDate = Date()
        for _ in 0...availableItems.count + 1 {
            solveMatrix.append(Array(repeating:Int(), count:maximumWeight + 1))
        }
        for i in 0...availableItems.count {
            for j in 0...maximumWeight {
                if (i == 0 || j == 0) {
                    solveMatrix[i][j] = 0
                }
                else if (availableItems[i - 1].weight <= j) {
                    let item = availableItems[i - 1]
                    let previousCost = solveMatrix[i-1][j]
                    let currentCost = item.cost + solveMatrix[i - 1][j - item.weight]
                    solveMatrix[i][j] = max(currentCost, previousCost)
                }
                else {
                    solveMatrix[i][j] = solveMatrix[i-1][j]
                }
            }
        }
        solveTime = Date().timeIntervalSince(startDate)
        return solveMatrix[availableItems.count][maximumWeight]
    }
}
