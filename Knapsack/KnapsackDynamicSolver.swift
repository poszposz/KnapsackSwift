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
    var maximumVolume:  Int
    var solveTime:      TimeInterval?
    
    private var solveMatrix:    Array<Array<Array<Int>>> = [[[Int]]]()
    
    required init(maximumWeight: Int, maximumVolume: Int, availableItems: [KnapsackItem]) {
        self.maximumWeight = maximumWeight
        self.maximumVolume = maximumVolume
        self.availableItems = availableItems
    }
    
    func solve() -> Int {
        for _ in 0...availableItems.count + 1 {
            for _ in 0...maximumWeight {
                let array = Array(repeating: Int(), count: maximumVolume + 1)
                solveMatrix.append(Array(repeating:array, count:maximumWeight + 1))
            }
        }
        let startDate = Date()
        for i in 0...availableItems.count {
            for j in 0...maximumWeight {
                for k in 0...maximumVolume {
                    if (i == 0 || j == 0 || k == 0) {
                        solveMatrix[i][j][k] = 0
                    }
                    else if (availableItems[i - 1].weight <= j && availableItems[i - 1].volume < k) {
                        let item = availableItems[i - 1]
                        let previousCost = solveMatrix[i-1][j][k]
                        let currentCost = item.cost + solveMatrix[i - 1][j - item.weight][k - item.volume]
                        solveMatrix[i][j][k] = max(currentCost, previousCost)
                    }
                    else {
                        solveMatrix[i][j][k] = solveMatrix[i-1][j][k]
                    }
                }
            }
        }
        solveTime = Date().timeIntervalSince(startDate)
        return solveMatrix[availableItems.count][maximumWeight][maximumVolume]
    }
}
