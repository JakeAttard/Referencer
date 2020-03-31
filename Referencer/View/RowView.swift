//
//  RowView.swift
//  Referencer
//
//  Created by Jake Attard on 31/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    @ObservedObject var model: FormulaOneDriver
    
    
    var body: some View {
        
        HStack {
            self.model.getImage().resizable().frame(width: 50, height: 50).clipShape(Circle()).shadow(radius: 10).scaledToFit()
            Text(model.formulaOneDriverName)
            Text(model.formulaOneDriverTeam).fontWeight(.light).italic().padding(.leading).frame(maxWidth: .infinity, alignment: .trailing)
        }
         
    }
}
