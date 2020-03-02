//
//  ContentView.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var driver: Driver
    
    let currentTeam = "Current Team:"
    let team = "Renault"
    let raceStarts = "Race Starts"
    let raceWins = "Race Wins:"
    let polePositions = "Pole Positions:"
    let fastestLaps = "Fastest Laps"
    let lapsCompleted = "Laps Completed"
    let careerPoints = "Career Points:"
    
    var body: some View {
        
        VStack {
            Image("projectImage")
                .resizable()
                .frame(width: 300.0, height: 300.0)
                .clipShape(Circle())
                .shadow(radius: 10)
                .scaledToFit()
                
                    
            Text(driver.driverName)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.title)
                .padding(.bottom, 10.0)
            
            Text(driver.driverNationality)
                .fontWeight(.regular).italic()
                .multilineTextAlignment(.center)
                .padding(.bottom, 20.0)
                
            
            HStack {
                Text(currentTeam)
                    .fontWeight(.bold)


                Text(driver.driverTeam)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)

            HStack {
                Text(raceStarts)
                .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text(String(driver.driverRaceStarts))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)

            HStack {
                Text(raceWins)
                .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text(String(driver.driverRaceWins))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)

            HStack {
                Text(polePositions)
                .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text(String(driver.driverPolePositions))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)

            HStack {
                Text(fastestLaps)
                .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text(String(driver.driverFastestLaps))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)

            HStack {
                Text(lapsCompleted)
                .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text(String(driver.driverLapsCompleted))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)

            HStack {
                Text(careerPoints)
                .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text(String(driver.driverCareerPoints))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(driver: Driver(driverName: "Daniel Ricciardo", driverNationality: "Australian", driverTeam: "Renault", driverRaceStarts: 177, driverRaceWins: 7, driverPolePositions: 3, driverFastestLaps: 11, driverLapsCompleted: 9230, driverCareerPoints: 1040))
    }
}
