//
//  ListView.swift
//  Referencer
//
//  Created by Jake Attard on 11/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//



import SwiftUI

struct MasterView: View {
    
    /**
        MasterView is the first view users will see when they load up the Referencer application.
        Added the ListView.
    */
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.formulaOneDrivers) { formulaOneDriver in
                NavigationLink(destination: DetailView(model: formulaOneDriver, viewModel: self.viewModel)) {
                    Section {
                        RowView(model: formulaOneDriver)
                    }
                }
            }.onDelete { indices in
                indices.forEach { self.viewModel.remove(index: $0) }
            }
        }
    }
}
