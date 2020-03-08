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
                HStack(spacing: 0) {
                    LeftView()
                    RightView()
                        .frame(width: reader.size.width * 0.55)
                }
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
