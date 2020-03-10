//
//  ContentView.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let formulaOneDriver: FormulaOneDriver
    
    // Variables for the labels used to help display data
    let country = "Country:"
    let currentTeam = "Current Team:"
    let championships = "Titles:"
    let raceWins = "Race Wins:"
    let podiums = "Podiums:"
    let polePositions = "Pole Positions:"
    let raceStarts = "Race Starts:"
    let fastestLaps = "Fastest Laps:"
    let lapsCompleted = "Laps Completed:"
    let careerPoints = "Career Points:"
    let disclaimer = "Disclaimer: Images taken from formula1.com website."
    
    var body: some View {
        
        VStack {
            Group {
                Image(formulaOneDriver.formulaOneDriverImage)
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .scaledToFit()

                
                Text(formulaOneDriver.formulaOneDriverName)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.bottom, 10.0)
                
                HStack {
                    // Text Labels positioned on the left
                    VStack(alignment: .trailing, spacing: 10.0) {
                        Text(country)
                            .fontWeight(.regular).italic()
                            .multilineTextAlignment(.center)
                        
                        Text(currentTeam)
                            .fontWeight(.bold)
                        
                        Text(championships)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(raceWins)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(podiums)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(polePositions)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(raceStarts)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(fastestLaps)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(lapsCompleted)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                        Text(careerPoints)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    }
                    
                    // Text Labels positioned on the right
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text(formulaOneDriver.formulaOneDriverNationality)
                        .fontWeight(.regular).italic()
                        .multilineTextAlignment(.center)
                        
                        Text(formulaOneDriver.formulaOneDriverTeam)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverChampionships))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverRaceWins))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverPodiums))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverPolePositions))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverRaceStarts))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverFastestLaps))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverLapsCompleted))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        
                        Text(String(formulaOneDriver.formulaOneDriverCareerPoints))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    }
                }.padding(.bottom, 10.0)
            }
                
                HStack {
                    Text(disclaimer)
                    .fontWeight(.light)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
                }
                .padding(.top, 25.0)
            }
        }
    }

struct ListView: View {
    
    let formulaOneDrivers: [FormulaOneDriver]
    
    var body: some View {
    
        NavigationView {
            List(formulaOneDrivers) { formulaOneDriver in
                NavigationLink(destination: ContentView(formulaOneDriver: formulaOneDriver)) {
                    Section {
                        Image(formulaOneDriver.formulaOneDriverImage).resizable().frame(width: 50, height: 50).clipShape(Circle()).shadow(radius: 10).scaledToFit()
                        Text(formulaOneDriver.formulaOneDriverName)
                        Text(formulaOneDriver.formulaOneDriverTeam).fontWeight(.light).italic().padding(.leading).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }.navigationBarTitle(Text("Formula 1 Driver Stats"), displayMode: .inline)
            }
        }
    }
}

// ContentView using ListView to display data with the in-built simulator
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(formulaOneDrivers: [
            FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
            ])
    }
}
