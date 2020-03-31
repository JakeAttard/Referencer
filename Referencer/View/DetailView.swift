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
        
        GeometryReader { geometry in
        
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
                    VStack(alignment: .trailing, spacing: 10.0) {
                        
                        Text(ViewModel.driveName)
                            .fontWeight(.bold)
                            .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
                        Text(ViewModel.image)
                            .fontWeight(.bold)
                            .frame(width: geometry.size.width / 2, alignment: .trailing)
                        
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
                    }
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        TextField(ViewModel.driverNamePlaceholder, text:  self.$model.formulaOneDriverName)
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        TextField("Image URL", text: self.$url) {
                            self.model.updateImage(imageURL: self.url)
                        }.frame(width: geometry.size.width / 2, alignment: .leading)
                            
                        
                        /// TextField for formulaOneDriverNationality
                        TextField(ViewModel.countryPlaceholder, text: self.$model.formulaOneDriverNationality)
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverTeam
                        TextField(ViewModel.currentTeamPlaceholder, text: self.$model.formulaOneDriverTeam)
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverChampionships
                        TextField(ViewModel.titlesPlaceholder, value: self.$model.formulaOneDriverChampionships, formatter: NumberFormatter())
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverRaceWins
                        TextField(ViewModel.raceWinsPlaceholder, value: self.$model.formulaOneDriverRaceWins, formatter: NumberFormatter())
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverPodiums
                        TextField(ViewModel.podiumsPlaceholder, value: self.$model.formulaOneDriverPodiums, formatter: NumberFormatter())
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverPolePositions
                        TextField(ViewModel.polePositionsPlaceholder, value: self.$model.formulaOneDriverPolePositions, formatter: NumberFormatter())
                            .frame(width: geometry.size.width / 2, alignment: .leading)
                    }
                }
                
                HStack {
                    
                    // Text Labels positioned on the left
                    VStack(alignment: .trailing, spacing: 10.0) {
                        
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
                    
                    /// TextField Labels positioned on the right
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        /// TextField for formulaOneDriverRaceStarts
                        TextField(ViewModel.raceStartsPlaceholder, value: self.$model.formulaOneDriverRaceStarts, formatter: NumberFormatter())
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverFastestLaps
                        TextField(ViewModel.fastestLapsPlaceholder, value: self.$model.formulaOneDriverFastestLaps, formatter: NumberFormatter())
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverLapsCompleted
                        TextField(ViewModel.lapsCompletedPlaceholder, value: self.$model.formulaOneDriverLapsCompleted, formatter: NumberFormatter())
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                        
                        /// TextField for formulaOneDriverCareerPoints
                        TextField(ViewModel.careerPointsPlaceholder, value: self.$model.formulaOneDriverCareerPoints, formatter: NumberFormatter())
                        .frame(width: geometry.size.width / 2, alignment: .leading)
                    }
                    
                }
                
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
