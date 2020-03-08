//
//  LeftView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct LeftView: View {
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
             }
         }
    }
}

struct LeftView_Previews: PreviewProvider {
    static var previews: some View {
        LeftView()
    }
}
