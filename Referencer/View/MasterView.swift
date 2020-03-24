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
        ListView(viewModel: viewModel)
    }
}
