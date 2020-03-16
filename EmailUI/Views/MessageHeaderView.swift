//
//  MessageHeaderView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/12/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct MessageHeaderView: View {
    
    var body: some View {

        HStack {
        
            Image("profile")
                .resizable()
                .frame(width: 35.0, height: 35.0)
                .colorMultiply(.black)
            Text("Kelly Dorm")
                .foregroundColor(.black)
                .bold()
            Spacer()
            Text("Sunday, Feb. 21, 1:09pm")
                .foregroundColor(.gray)
                .font(.system(.caption))
        }
        .padding()
    }
}

struct MessageHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MessageHeaderView()
    }
}
