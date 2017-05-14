//
//  main.swift
//  Knapsack
//
//  Created by Jan Posz on 13.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation


func items() -> [KnapsackItem] {
    return [KnapsackItem(cost: 181, weight: 11121),
            KnapsackItem(cost: 212, weight: 121231),
            KnapsackItem(cost: 33, weight: 131123),
            KnapsackItem(cost: 424, weight: 141231),
            KnapsackItem(cost: 535, weight: 1521),
            KnapsackItem(cost: 161, weight: 11211),
            KnapsackItem(cost: 242, weight: 121),
            KnapsackItem(cost: 33, weight: 1321),
            KnapsackItem(cost: 454, weight: 3141),
            KnapsackItem(cost: 55, weight: 1451),
            KnapsackItem(cost: 151, weight: 1151),
            KnapsackItem(cost: 232, weight: 121),
            KnapsackItem(cost: 3883, weight: 1631),
            KnapsackItem(cost: 434, weight: 14871),
            KnapsackItem(cost: 55, weight: 151),
            KnapsackItem(cost: 151, weight: 1151),
            KnapsackItem(cost: 232, weight: 1321),
            KnapsackItem(cost: 33, weight: 1351),
            KnapsackItem(cost: 44, weight: 1431),
            KnapsackItem(cost: 545, weight: 1651),
            KnapsackItem(cost: 13451, weight: 1161),
            KnapsackItem(cost: 22, weight: 1231),
            KnapsackItem(cost: 3553, weight: 4131),
            KnapsackItem(cost: 44, weight: 1461),
            KnapsackItem(cost: 525, weight: 1751),
            KnapsackItem(cost: 121, weight: 1131),
            KnapsackItem(cost: 2352, weight: 1261),
            KnapsackItem(cost: 3223, weight: 1351),
            KnapsackItem(cost: 444, weight: 1461),
            KnapsackItem(cost: 5335, weight: 1531),
            KnapsackItem(cost: 1641, weight: 1113),
            KnapsackItem(cost: 2552, weight: 1271),
            KnapsackItem(cost: 3463, weight: 1531),
            KnapsackItem(cost: 4754, weight: 7141),
            KnapsackItem(cost: 555, weight: 1512)]
}

// Dynamic programming solution

let dynamicSolver = KnapsackDynamicSolver(maximumWeight: 100000, availableItems: items())
let dynamicResult = dynamicSolver.solve()
print(dynamicResult)

if let solveTime = dynamicSolver.solveTime {
    print("Dynamic solve time: \(solveTime) seconds.")
}

// Naive solution

//let naiveSolver = KnapsackNaiveSolver(maximumWeight: 30000, availableItems: items())
//let naiveResult = naiveSolver.solve()
//print(naiveSolver)
//
//if let solveTime = naiveSolver.solveTime {
//    print("Naive solve time: \(solveTime) seconds.")
//}





