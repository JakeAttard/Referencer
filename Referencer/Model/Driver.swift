//
//  Driver.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

class Driver {
    
    let driverName: String
    let driverNationality: String
    let driverTeam: String
    let driverRaceStarts: Int
    let driverRaceWins: Int
    let driverPolePositions: Int
    let driverFastestLaps: Int
    let driverLapsCompleted: Int
    let driverCareerPoints: Int
    
    init(driverName: String, driverNationality: String, driverTeam: String, driverRaceStarts: Int, driverRaceWins: Int, driverPolePositions: Int, driverFastestLaps: Int, driverLapsCompleted: Int, driverCareerPoints: Int) {
        self.driverName = driverName
        self.driverNationality = driverNationality
        self.driverTeam = driverTeam
        self.driverRaceStarts = driverRaceStarts
        self.driverRaceWins = driverRaceWins
        self.driverPolePositions = driverPolePositions
        self.driverFastestLaps = driverFastestLaps
        self.driverLapsCompleted = driverLapsCompleted
        self.driverCareerPoints = driverCareerPoints
    }
}
