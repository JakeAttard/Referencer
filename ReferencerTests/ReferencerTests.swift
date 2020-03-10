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
    
    // Testing that the driver isnt nill
    func testFormulaOneDriverNotNill() {
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        XCTAssertNotNil(formulaOneDriver)
    }
    
    // Testing that the driver image is valid
    func testFormulaOneDriverImage() {
        let driverImage = "lewishH"
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: driverImage, formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverImage == driverImage)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverImage, driverImage)
    }
    
    // Testing that the driver name is valid
    func testFormulaOneDriverName() {
        let driverName = "Lewis Hamilton"
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: driverName, formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverName == driverName)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverName, driverName)
    }
    
    // Testing that the driver nationality is valid
    func testFormulaOneDriverNationality() {
        let driverNationality = "United Kingdom"
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: driverNationality, formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverNationality == driverNationality)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverNationality, driverNationality)
    }
    
    // Testing that the driver team is valid
    func testFormulaOneDriverTeam() {
        let driverTeam = "Mercedes"
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: driverTeam, formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverTeam == driverTeam)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverTeam, driverTeam)
    }
    
    // Testing that the driver number of championships is valid
    func testFormulaOneDriverChampionships() {
        let driverChampionships = Int(6)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: driverChampionships, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverChampionships == driverChampionships)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverChampionships, driverChampionships)
    }
    
    // Testing that the driver number of race starts is valid
    func testFormulaOneDriverRaceStarts() {
        let driverRaceStarts = Int(250)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: driverRaceStarts, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverRaceStarts == driverRaceStarts)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverRaceStarts, driverRaceStarts)
    }
    
    // Testing that the driver number of race wins is valid
    func testFormulaOneDriverRaceWins() {
        let driverRaceWins = Int(84)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: driverRaceWins, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverRaceWins == driverRaceWins)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverRaceWins, driverRaceWins)
    }
    
    // Testing that the driver number of podiums is valid
    func testFormulaOneDriverPodiums() {
        let driverPodiums = Int(151)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: driverPodiums, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverPodiums == driverPodiums)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverPodiums, driverPodiums)
    }
    
    // Testing that the driver number of pole positions is valid
    func testFormulaOneDriverPolePositions() {
        let driverPolePositions = Int(88)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: driverPolePositions, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverPolePositions == driverPolePositions)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverPolePositions, driverPolePositions)
    }
    
    // Testing that the driver number of fastest laps is valid
    func testFormulaOneDriverFastestLaps() {
        let driverFastestLaps = Int(47)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: driverFastestLaps, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverFastestLaps == driverFastestLaps)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverFastestLaps, driverFastestLaps)
    }
    
    // Testing that the driver number of laps completed is valid
    func testFormulaOneDriverLapsCompleted() {
        let driverLapsCompleted = Int(14216)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: driverLapsCompleted, formulaOneDriverCareerPoints: 3431)
        
        XCTAssert(formulaOneDriver.formulaOneDriverLapsCompleted == driverLapsCompleted)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverLapsCompleted, driverLapsCompleted)
    }
    
    // Testing that the driver number of career points is valid
    func testFormulaOneDriverCareerPoints() {
        let driverCareerPoints = Int(3431)
        let formulaOneDriver = FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: driverCareerPoints)
        
        XCTAssert(formulaOneDriver.formulaOneDriverCareerPoints == driverCareerPoints)
        XCTAssertEqual(formulaOneDriver.formulaOneDriverCareerPoints, driverCareerPoints)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
