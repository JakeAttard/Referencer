//
//  MasterView.swift
//  Referencer
//
//  Created by Jake Attard on 17/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

/**
 DetailView is what users will see when they click on the the FormulaOneDriver name from the ListView.
 This includes addition information about the driver career stats.
*/

import SwiftUI
struct DetailView: View {
    
    @ObservedObject var model: FormulaOneDriver
    
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
    @State public var notes: String = ""
    
    var body: some View {
        
        GeometryReader { geometry in
        
        VStack {
            Group {
                Image(self.model.formulaOneDriverImage)
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .scaledToFit()

                
                Text(self.model.formulaOneDriverName)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.bottom, 10.0)
                
                HStack {
                    // Text Labels positioned on the left
                    VStack(alignment: .trailing, spacing: 10.0) {
                        Text(self.country)
                            .fontWeight(.regular).italic()
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.currentTeam)
                            .fontWeight(.bold)
                            .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.championships)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.raceWins)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.podiums)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.polePositions)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.raceStarts)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.fastestLaps)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.lapsCompleted)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(self.careerPoints)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                    }
                    
                    // Text Labels positioned on the right
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text(self.model.formulaOneDriverNationality)
                        .fontWeight(.regular).italic()
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(self.model.formulaOneDriverTeam)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverChampionships))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverRaceWins))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverPodiums))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverPolePositions))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverRaceStarts))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverFastestLaps))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverLapsCompleted))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        Text(String(self.model.formulaOneDriverCareerPoints))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                    }
                    
                }.padding(.bottom, 10.0)
                
                HStack {
                    VStack(alignment: .trailing, spacing: 10.0) {
                        Text("Notes:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                    }
                        
                    VStack(alignment: .leading, spacing: 10.0) {
                        TextField("Add note... ", text: self.$model.formulaOneDriverNote)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                    }
                }.padding(.bottom, 10.0)
            }
                
                HStack {
                    Text(self.disclaimer)
                    .fontWeight(.light)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
                }
            
            }
        }
        }
    }
