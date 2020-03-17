//
//  ListView.swift
//  Referencer
//
//  Created by Jake Attard on 11/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

/**
 MasterView is the first view users will see when they load up the Referencer application.
 This includes the NavigationView with a List showing the Formula One Driver Image, Name and Team they drive for.
*/

import SwiftUI

struct MasterView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
    
        NavigationView {
            List(viewModel.formulaOneDrivers) { formulaOneDriver in
                NavigationLink(destination: DetailView(model: formulaOneDriver)) {
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
