//
//  LeftView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct LeftView: View {
    
    private var users: Array<User> {
        
        return [
            User(name: "Person 1", profileImage: Image("profile.1")),
            User(name: "Person 2", profileImage: Image("profile.2")),
            User(name: "Person 3", profileImage: Image("profile.3")),
            User(name: "Person 4", profileImage: Image("profile.4")),
            User(name: "Person 5", profileImage: Image("profile.5")),
            User(name: "Person 6", profileImage: Image("profile.6")),
        ]
    }
    
    private var unreadMessages: Array<Message> {
        return [
        
            Message(author: self.users[0],
                    subject: "Subject 1",
                    createdDate:  Calendar.current.date(byAdding: .day, value: -2, to: Date())!,
                    text: "Message 1"),
            
            Message(author: self.users[1],
                    subject: "Subject 2",
                    createdDate: Calendar.current.date(byAdding: .day, value: -1, to: Date())!,
                    text: "Message 2")
        ]
    }
    
    private var snoozedMessages: Array<Message> {
        return [
        
            Message(author: self.users[2],
                    subject: "Subject 3",
                    createdDate: Calendar.current.date(byAdding: .day, value: -3, to: Date())!,
                    text: "Message 3"),
            
            Message(author: self.users[3],
                    subject: "Subject 4",
                    createdDate: Calendar.current.date(byAdding: .day, value: -7, to: Date())!,
                    text: "Message 4")
        ]
    }
    
    private var newsletterMessages: Array<Message> {
        return [
        
            Message(author: self.users[4],
                    subject: "Subject 5",
                    createdDate: Calendar.current.date(byAdding: .day, value: -4, to: Date())!,
                    text: "Message 5"),
            
            Message(author: self.users[5],
                    subject: "Subject 6",
                    createdDate: Calendar.current.date(byAdding: .day, value: -5, to: Date())!,
                    text: "Message 6")
        ]
    }
    
    private var data: Array<PreviewHeaderMeta> {
        return [
        
            PreviewHeaderMeta(image: Image("unread"),
                              category: MessageCategory.unread,
                              subtitle: "skywalker@jedi.com",
                              imageColor: .blue,
                              messages: unreadMessages),
                              
            PreviewHeaderMeta(image: Image("snoozed"),
                              category: MessageCategory.snoozed,
                              subtitle: "skywalker2@jedi.com",
                              imageColor: Color("Snoozed"),
                              messages: snoozedMessages),
            
            PreviewHeaderMeta(image: Image("newsletter"),
                              category: MessageCategory.newsletters,
                              subtitle: "skywalker3@jedi.com",
                              imageColor: Color("Newsletter"),
                              messages: newsletterMessages)
        ]
    }
    
    var body: some View {
        
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

            HStack(alignment: .top) {
                
                VStack(alignment: .leading, spacing: 0) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("ComposeLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("SelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.unread")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.pin")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.folder")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.attachment")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.snooze")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.layer")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("menu.users")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Spacer()
                }
                .frame(width: 64.0)
                
                ScrollView {
                    ForEach(self.data, id: \.category){meta in
                        PreviewMessageCard(headerMeta: meta)
                    }
                }
            }
         }
    }
}

struct LeftView_Previews: PreviewProvider {
    static var previews: some View {
        LeftView()
    }
}
