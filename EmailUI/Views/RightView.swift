//
//  RightView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct RightView: View {
    
    var body: some View {
        
        ZStack {
            VStack {
                MessageHeaderView()
                Text("We're getting married - Ronald and Kelly")
                    .font(.system(.largeTitle))
                    .foregroundColor(.black)
                Spacer()
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct RightView_Previews: PreviewProvider {
    static var previews: some View {
        RightView()
    }
}
