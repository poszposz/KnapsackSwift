//
//  KnapsackSolverType.swift
//  Knapsack
//
//  Created by Jan Posz on 14.05.2017.
//  Copyright © 2017 VORM. All rights reserved.
//

import Foundation

protocol KnapsackSolverType {
    
    var availableItems:     [KnapsackItem] {get set}
    var maximumWeight:      Int {get set}
    var solveTime:          TimeInterval? {get set}
    
    init(maximumWeight: Int, availableItems: [KnapsackItem])
    func solve() -> Int
}
