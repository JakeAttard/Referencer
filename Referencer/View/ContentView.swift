//
//  ContentView.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

/**
ContentView is passing the MasterView in to be displayed.
*/

import SwiftUI
struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            
            /// Bringing in MasterView contents
            MasterView(viewModel: viewModel)
                .navigationBarTitle(Text(ViewModel.listTitle), displayMode: .inline)
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(
                        action: {
                            withAnimation { self.viewModel.addFormulaOneDriver() }
                        }
                        
                    ) {
                    Image(systemName: "plus")
                    })
        }
    }
}
