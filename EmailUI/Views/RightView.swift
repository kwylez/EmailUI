//
//  RightView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct RightView: View {
    
    @Binding var selectedMessage: Message
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                
                MessageHeaderView(selectedMessage: $selectedMessage)
                
                Text(selectedMessage.subject)
                    .font(.system(.largeTitle))
                    .foregroundColor(.black)
                    .padding()

                Text(selectedMessage.text)
                    .font(.system(.footnote))
                    .foregroundColor(.gray)
                    .padding()
                
                Spacer()
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct RightView_Previews: PreviewProvider {
    static var previews: some View {
        RightView(selectedMessage: .constant(unreadMessages.first!))
    }
}
