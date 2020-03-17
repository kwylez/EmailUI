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
    
    @State var selectedIndex: Int = 0
    
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
                    
                    LeftMenuItemView(image: "menu.unread", index: 0, selectedIndex: $selectedIndex)
                    LeftMenuItemView(image: "menu.pin", index: 1, selectedIndex: $selectedIndex)
                    LeftMenuItemView(image: "menu.folder", index: 2, selectedIndex: $selectedIndex)
                    LeftMenuItemView(image: "menu.attachment", index: 3, selectedIndex: $selectedIndex)
                    LeftMenuItemView(image: "menu.snooze", index: 4, selectedIndex: $selectedIndex)
                    LeftMenuItemView(image: "menu.layer", index: 5, selectedIndex: $selectedIndex)
                    LeftMenuItemView(image: "menu.users", index: 6, selectedIndex: $selectedIndex)
                    
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
