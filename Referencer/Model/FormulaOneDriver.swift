//  Driver.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import Foundation

/**
 FormulaOneDriver Class with key properties created to display a racing driver Formula One career stats these include driver:
 image (String), name (String), nationality (String), team (String), championships (Int), racestarts (Int), racewins (Int), podiums (Int), polepositions (Int), fatestlaps (Int), lapscompleted (Int) & career points (Float). A published variable has been created so users can add personal notes about their favourite drivers.
*/

class FormulaOneDriver: ObservableObject, Identifiable {
    
    /// Formula One Driver Image
    let formulaOneDriverImage: String
    
    /// Formula One Driver Name
    let formulaOneDriverName: String
    
    /// Formula One Driver Nationality
    let formulaOneDriverNationality: String
    
    /// Formula One Driver Team
    let formulaOneDriverTeam: String
    
    /// Formula One Driver Championships
    let formulaOneDriverChampionships: Int
    
    /// Formula One Driver Race Starts
    let formulaOneDriverRaceStarts: Int
    
    /// Formula One Driver Race Wins
    let formulaOneDriverRaceWins: Int
    
    /// Formula One Driver Podiums
    let formulaOneDriverPodiums: Int
    
    /// Formula One Driver Pole Positions
    let formulaOneDriverPolePositions: Int
    
    /// Formula One Driver Fastest Laps
    let formulaOneDriverFastestLaps: Int
    
    /// Formula One Driver Laps Completed
    let formulaOneDriverLapsCompleted: Int
    
    /// Formula One Driver Career Points
    let formulaOneDriverCareerPoints: Int
    
    /// Formula One Driver Note
    @Published var formulaOneDriverNote: String = ""
    
    /**
     - Parameters:
        - formulaOneDriverImage: The driver image (String)
        - formulaOneDriverName: The driver full name (String)
        - formulaOneDriverNationality: The driver nationality (String: what country he was born in)
        - formulaOneDriverDriverTeam: The driver team (String: what team he currently races for)
        - formulaOneDriverChampionships: The number of championships (Int) the driver has (Add 0 if none)
        - formulaOneDriverRaceStarts: The number of race starts (Int) the driver has (Add 0 if none)
        - formulaOneDriverRaceWins: The number of race wins (Int) the driver has (Add 0 if none)
        - formulaOneDriverPodiums: The number of podiums (Int)  the driver has  (Add 0 if none)
        - formulaOneDriverPolePositions: The number of pole positions (Int) the driver has  (Add 0 if none)
        - formulaOneDriverFastestLaps: The number of fatest laps (Int)  the driver has  (Add 0 if none)
        - formulaOneDriverLapsCompleted: The number of laps (Int)  the driver has completed (Add 0 if none)
        - formulaOneDriverCareerPoints: The number of career points (Float)  the driver has  (Add 0 if none)
     */
    
    init(formulaOneDriverImage: String, formulaOneDriverName: String, formulaOneDriverNationality: String, formulaOneDriverTeam: String, formulaOneDriverChampionships: Int, formulaOneDriverRaceStarts: Int, formulaOneDriverRaceWins: Int, formulaOneDriverPodiums: Int, formulaOneDriverPolePositions: Int, formulaOneDriverFastestLaps: Int, formulaOneDriverLapsCompleted: Int, formulaOneDriverCareerPoints: Int) {
        
        self.formulaOneDriverImage = formulaOneDriverImage
        self.formulaOneDriverName = formulaOneDriverName
        self.formulaOneDriverNationality = formulaOneDriverNationality
        self.formulaOneDriverTeam = formulaOneDriverTeam
        self.formulaOneDriverChampionships = formulaOneDriverChampionships
        self.formulaOneDriverRaceStarts = formulaOneDriverRaceStarts
        self.formulaOneDriverRaceWins = formulaOneDriverRaceWins
        self.formulaOneDriverPodiums = formulaOneDriverPodiums
        self.formulaOneDriverPolePositions = formulaOneDriverPolePositions
        self.formulaOneDriverFastestLaps = formulaOneDriverFastestLaps
        self.formulaOneDriverLapsCompleted = formulaOneDriverLapsCompleted
        self.formulaOneDriverCareerPoints = formulaOneDriverCareerPoints
    }
}
