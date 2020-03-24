//
//  ListView.swift
//  Referencer
//
//  Created by Jake Attard on 25/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

/**
 ListView
*/

import SwiftUI

struct ListView: View {
    
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
                }.navigationBarTitle(Text(self.viewModel.listTitle), displayMode: .inline)
            }
        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
