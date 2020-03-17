//
//  PreviewMessage.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/10/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct PreviewMessageView: View {
    
    var message: Message
    
    var body: some View {
        
        HStack(alignment: .top) {

            message.author.profileImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("SelectedLeftMenu"), lineWidth: 2))
                .frame(width: 45.0, height: 45.0)
            VStack(alignment: .leading, spacing: 10.0) {
                Text(message.author.name)
                    .bold()
                Text(message.subject)
                    .bold()
                Text(message.text)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            Spacer()
            Text(self.message.friendlyDate)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color("MessagePreview"))
    }
}

struct PreviewMessage_Previews: PreviewProvider {
    
    static var previews: some View {
    
        PreviewMessageView(message:
            Message(author:
                User(name: "Mara Jade", profileImage: Image("profile.1")),
                    subject: "Legends",
                    createdDate: Date(),
                    text: "May the Force be with you"))
    }
}
