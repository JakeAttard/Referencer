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
     @ObservedObject var viewModel: ViewModel
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
                        Text(ViewModel.country)
                            .fontWeight(.regular).italic()
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.currentTeam)
                            .fontWeight(.bold)
                            .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.titles)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.raceWins)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.podiums)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.polePositions)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.raceStarts)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.fastestLaps)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.lapsCompleted)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.careerPoints)
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
                        Text(ViewModel.notes)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width / 2, alignment: .trailing)
                    }
                        
                    VStack(alignment: .leading, spacing: 10.0) {
                        TextField(ViewModel.addNotes, text: self.$model.formulaOneDriverNote)
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                    }
                }.padding(.bottom, 10.0)
            }
                
                HStack {
                    Text(ViewModel.disclaimer)
                    .fontWeight(.light)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
                }
            
            }
        }
        }
    }
