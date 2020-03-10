//
//  Driver.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import Foundation

struct FormulaOneDriver: Identifiable {
    
    var id = UUID()
    let formulaOneDriverImage: String
    let formulaOneDriverName: String
    let formulaOneDriverNationality: String
    let formulaOneDriverTeam: String
    let formulaOneDriverChampionships: Int
    let formulaOneDriverRaceStarts: Int
    let formulaOneDriverRaceWins: Int
    let formulaOneDriverPodiums: Int
    let formulaOneDriverPolePositions: Int
    let formulaOneDriverFastestLaps: Int
    let formulaOneDriverLapsCompleted: Int
    let formulaOneDriverCareerPoints: Int
    
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
