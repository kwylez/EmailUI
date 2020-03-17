//
//  MessageHeaderView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/12/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct MessageHeaderView: View {
    
    @Binding var selectedMessage: Message
    
    var body: some View {

        HStack {
        
            selectedMessage.author.profileImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("SelectedLeftMenu"), lineWidth: 2))
                .frame(width: 55.0, height: 55.0)
            Text(selectedMessage.author.name)
                .foregroundColor(.black)
                .bold()
            Spacer()
            Text(selectedMessage.friendlyDate)
                .foregroundColor(.gray)
                .font(.system(.caption))
        }
        .padding()
    }
}

struct MessageHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MessageHeaderView(selectedMessage: .constant(unreadMessages.first!))
    }
}
