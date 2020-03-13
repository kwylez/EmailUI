//
//  PreviewMessage.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/10/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct PreviewMessage: View {
    
    var body: some View {
        
        HStack(alignment: .top) {
        
            Image("profile")
                .resizable()
                .frame(width: 35.0, height: 35.0)
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Rio Haryanto")
                    .bold()
                Text("Finally we made it")
                    .bold()
                Text("Hi, bung, akhirnya gw bisa masuk F!, hahaha th...")
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("Yesterday")
        }
        .padding()
        .background(Color("MessagePreview"))
    }
}

struct PreviewMessage_Previews: PreviewProvider {
    static var previews: some View {
        PreviewMessage()
    }
}
