//
//  ViewModel.swift
//  Referencer
//
//  Created by Jake Attard on 17/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

/**
 ViewModel is a model 
*/

import Foundation

class ViewModel: ObservableObject, Identifiable {
    let listTitle: String
    @Published var formulaOneDrivers: [FormulaOneDriver]
    
    init(listTitle: String, formulaOneDrivers: [FormulaOneDriver]) {
        self.listTitle = listTitle
        self.formulaOneDrivers = formulaOneDrivers
    }
}
