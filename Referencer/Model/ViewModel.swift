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
    
    static var listTitle: String = "Formula One Drivers"
    
    static var driveName: String = "Name:"
    
    static var image: String = "Image URL:"
    
    static var imageUrlPlaceholder: String = "Formula One Driver Profile URL"
    
    static var country: String = "Country:"
    
    static var currentTeam: String = "Current Team:"
    
    static var titles: String = "Titles:"
    
    static var raceWins: String = "Race Wins:"
    
    static var podiums: String = "Podiums:"
    
    static var polePositions: String = "Pole Positions:"
    
    static var raceStarts: String = "Race Starts:"
    
    static var fastestLaps: String = "Fastest Laps:"
    
    static var lapsCompleted: String = "Laps Completed:"
    
    static var careerPoints: String = "Career Points:"
    
    static var notes: String = "Notes:"
    
    static var addNotes: String = "Add note..."
    
    static var disclaimer: String = "Disclaimer: Images taken from formula1.com website."
    
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
        self.formulaOneDrivers = formulaOneDrivers
    }
}
