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
    @State var url: String = ""
    @State public var notes: String = ""
    
    var body: some View {
        
        VStack {
            Group {
                
                self.model.getImage()
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .scaledToFit()
                    .padding(.bottom, 10.0)
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(ViewModel.driveName)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.image)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.country)
                            .fontWeight(.regular).italic()
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.currentTeam)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.titles)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.raceWins)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.podiums)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.polePositions)
                            .fontWeight(.bold)
                            .frame(maxHeight: .infinity)
                    }
                    
                    VStack {
                        
                        TextField(ViewModel.driverNamePlaceholder, text:  self.$model.formulaOneDriverName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Image URL", text: self.$url) {
                            self.model.updateImage(imageURL: self.url)
                        }
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                        
                        /// TextField for formulaOneDriverNationality
                        TextField(ViewModel.countryPlaceholder, text: self.$model.formulaOneDriverNationality)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverTeam
                        TextField(ViewModel.currentTeamPlaceholder, text: self.$model.formulaOneDriverTeam)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverChampionships
                        TextField(ViewModel.titlesPlaceholder, value: self.$model.formulaOneDriverChampionships, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverRaceWins
                        TextField(ViewModel.raceWinsPlaceholder, value: self.$model.formulaOneDriverRaceWins, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverPodiums
                        TextField(ViewModel.podiumsPlaceholder, value: self.$model.formulaOneDriverPodiums, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverPolePositions
                        TextField(ViewModel.polePositionsPlaceholder, value: self.$model.formulaOneDriverPolePositions, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(.leading)
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(ViewModel.raceStarts)
                        .fontWeight(.bold)
                         .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.fastestLaps)
                        .fontWeight(.bold)
                         .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.lapsCompleted)
                        .fontWeight(.bold)
                         .frame(maxHeight: .infinity)
                        
                        Text(ViewModel.careerPoints)
                        .fontWeight(.bold)
                         .frame(maxHeight: .infinity)
                    
                        Text(ViewModel.notes)
                        .fontWeight(.bold)
                         .frame(maxHeight: .infinity)
                    }
                    
                    /// TextField Labels positioned on the right
                    VStack {
                        
                        /// TextField for formulaOneDriverRaceStarts
                        TextField(ViewModel.raceStartsPlaceholder, value: self.$model.formulaOneDriverRaceStarts, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverFastestLaps
                        TextField(ViewModel.fastestLapsPlaceholder, value: self.$model.formulaOneDriverFastestLaps, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverLapsCompleted
                        TextField(ViewModel.lapsCompletedPlaceholder, value: self.$model.formulaOneDriverLapsCompleted, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        /// TextField for formulaOneDriverCareerPoints
                        TextField(ViewModel.careerPointsPlaceholder, value: self.$model.formulaOneDriverCareerPoints, formatter: NumberFormatter())
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField(ViewModel.addNotes, text: self.$model.formulaOneDriverNote)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(.leading)
                }
                

            }.padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            
                
            HStack {
                Text(ViewModel.disclaimer)
                .fontWeight(.light)
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
            }
        }
    }
}
