//
//  main.swift
//  Knapsack
//
//  Created by Jan Posz on 13.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation

let weight = 5000
let items = KnapsackItemProvider.itemsWith(count: 99)

// Dynamic programming solution

let dynamicSolver = KnapsackDynamicSolver(maximumWeight: weight, availableItems: items)
let dynamicResult = dynamicSolver.solve()
print(dynamicResult)

if let solveTime = dynamicSolver.solveTime {
    print("Dynamic solve time: \(solveTime) seconds.")
}

// Naive solution

let naiveSolver = KnapsackNaiveSolver(maximumWeight: weight, availableItems: items)
let naiveResult = naiveSolver.solve()
print(naiveResult)

if let solveTime = naiveSolver.solveTime {
    print("Naive solve time: \(solveTime) seconds.")
}





