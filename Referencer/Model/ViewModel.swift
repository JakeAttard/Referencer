//
//  ViewModel.swift
//  Referencer
//
//  Created by Jake Attard on 17/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import Foundation

class ViewModel: ObservableObject, Identifiable {
    @Published var formulaOneDrivers: [FormulaOneDriver]
    
    init(formulaOneDrivers: [FormulaOneDriver]) {
        self.formulaOneDrivers = formulaOneDrivers
    }
}
