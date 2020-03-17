//
//  LeftView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct LeftView: View {
    
    @Binding var selectedMessage: Message
    
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
                    ForEach(data, id: \.category){meta in
                        PreviewMessageCard(headerMeta: meta, selectedMessage: self.$selectedMessage)
                    }
                }
            }
         }
    }
}

struct LeftView_Previews: PreviewProvider {
    static var previews: some View {
        LeftView(selectedMessage: .constant(unreadMessages.first!))
    }
}
