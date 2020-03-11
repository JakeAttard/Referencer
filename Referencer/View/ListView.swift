//
//  ListView.swift
//  Referencer
//
//  Created by Jake Attard on 11/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import SwiftUI

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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(formulaOneDrivers: [
        FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431)
        ])
    }
}
