//
//  ContentView.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
            MasterView(viewModel: viewModel)
        }
    }

// ContentView using ListView to display data with the in-built simulator
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: [
//        FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
//        ])
//    }
//}
