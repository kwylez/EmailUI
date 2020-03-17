//
//  PreviewMessageCard.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/10/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct PreviewMessageCard: View {
    
    var headerMeta: PreviewHeaderMeta
    
    @Binding var selectedMessage: Message
    
    var body: some View {

        VStack(alignment: .leading, spacing: 0) {

            PreviewMessageHeaderView(headerMeta: self.headerMeta)
        
            ForEach(self.headerMeta.messages, id: \.author.name) {message in
                PreviewMessageView(message: message, selectedMessage: self.$selectedMessage)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(Color.clear))
        .padding(.leading, 10.0)
        .padding(.trailing, 15.0)
        .padding(.top, 5.0)
    }
}

struct PreviewMessageCard_Previews: PreviewProvider {
    static var previews: some View {
        PreviewMessageCard(headerMeta:
            PreviewHeaderMeta(image: Image("snoozed"),
                              category: MessageCategory.unread,
                              subtitle: "skywalker@jedi.com",
                              imageColor: Color("Snoozed"), messages: []),
                           selectedMessage: .constant(unreadMessages.first!))
    }
}
