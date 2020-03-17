//  Driver.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

/**
 FormulaOneDriver Class with key properties created to display a racing driver Formula One career stats these include driver:
 image, name, nationality, team, championships, racestarts, racewins, podiums, polepositions, fatestlaps, lapscompleted & career points.
 
 A published variable has been created so users can add personal notes about their favourite drivers.
*/
import Foundation

// FormulaOneDriver Struct with key properties needed to display driver stats.
class FormulaOneDriver: ObservableObject, Identifiable {
    
    // Formula One Driver Image
    let formulaOneDriverImage: String
    // Formula One Driver Name
    let formulaOneDriverName: String
    // Formula One Driver Nationality
    let formulaOneDriverNationality: String
    // Formula One Driver Team
    let formulaOneDriverTeam: String
    // Formula One Driver Championships
    let formulaOneDriverChampionships: Int
    // Formula One Driver Race Starts
    let formulaOneDriverRaceStarts: Int
    // Formula One Driver Race Wins
    let formulaOneDriverRaceWins: Int
    // Formula One Driver Podiums
    let formulaOneDriverPodiums: Int
    /// Formula One Driver Pole Positions
    let formulaOneDriverPolePositions: Int
    // Formula One Driver Fastest Laps
    let formulaOneDriverFastestLaps: Int
    // Formula One Driver Laps Completed
    let formulaOneDriverLapsCompleted: Int
    // Formula One Driver Career Points
    let formulaOneDriverCareerPoints: Int
    
    // Formula One Driver Note
    @Published var formulaOneDriverNote: String = ""
    
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
