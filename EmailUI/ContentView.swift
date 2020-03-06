//
//  ContentView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/5/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader {reader in
           
            ZStack {
                LinearGradient(
                    gradient:
                    Gradient(
                        colors: [
                            Color("StartGradient"),
                            Color("EndGradient")
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                Color(.red)
                Color(.blue)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
