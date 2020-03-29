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
    
    /**
    - Parameters:
       - listTitle: Declaring the listTitle
       - formulaOneDrivers: FormulaOneDriver Array
    */
    
    func add() {
        formulaOneDrivers.insert(FormulaOneDriver(formulaOneDriverImage: "", formulaOneDriverName: "", formulaOneDriverNationality: "", formulaOneDriverTeam: "", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 0, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 0, formulaOneDriverCareerPoints: 0), at: 0)
    }
    
    func remove(index: Int) {
        formulaOneDrivers.remove(at: index)
    }
    
    init(listTitle: String, formulaOneDrivers: [FormulaOneDriver]) {
        self.listTitle = listTitle
        self.formulaOneDrivers = formulaOneDrivers
    }
}
