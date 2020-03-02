//
//  ReferencerTests.swift
//  ReferencerTests
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import XCTest
@testable import Referencer

class ReferencerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDriverName() {
        let name = "Daniel Ricciardo"
        let driver = Driver(driverName: name, driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverName == name)
        XCTAssertEqual(driver.driverName, name)
    }
    
    func testDriverNationality() {
        let nationality = "Australian"
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: nationality, driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverNationality == nationality)
        XCTAssertEqual(driver.driverNationality, nationality)
    }
    
    func testDriverTeam() {
        let team = "Renault"
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: team, driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverTeam == team)
        XCTAssertEqual(driver.driverTeam, team)
    }
    
    func testDriverRaceStarts() {
        let starts = 177
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: starts, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverRaceStarts == starts)
        XCTAssertEqual(driver.driverRaceStarts, starts)
    }
    
    func testDriverRaceWins() {
        let wins = 7
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: wins, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverRaceWins == wins)
        XCTAssertEqual(driver.driverRaceWins, wins)
    }
    
    func testDriverPolePositions() {
        let poles = 3
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: poles, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverPolePositions == poles)
        XCTAssertEqual(driver.driverPolePositions, poles)
    }
    
    func testDriverFastestLaps() {
        let fastestLaps = 11
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: fastestLaps, driverLapsCompleted: 9230, driverCareerPoints: 1040)
        XCTAssert(driver.driverFastestLaps == fastestLaps)
        XCTAssertEqual(driver.driverFastestLaps, fastestLaps)
    }
    
    func testDriverLapsCompleted() {
        let lapsCompleted = 9230
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: lapsCompleted, driverCareerPoints: 1040)
        XCTAssert(driver.driverLapsCompleted == lapsCompleted)
        XCTAssertEqual(driver.driverLapsCompleted, lapsCompleted)
    }
    
    func testDriverCareerPoints() {
        let careerPoints = 1040
        let driver = Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: careerPoints)
        XCTAssert(driver.driverCareerPoints == careerPoints)
        XCTAssertEqual(driver.driverCareerPoints, careerPoints)
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
