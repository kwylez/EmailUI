//
//  PreviewMessageCard.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/10/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct PreviewMessageCard: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            PreviewMessageHeaderView(headerMeta:
                PreviewHeaderMeta(image: Image("unread"),
                                  category: MessageCategory.unread,
                                  subtitle: "skywalker@jedi.com")
            )
            PreviewMessage()
            PreviewMessage()
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(Color.clear))
        .padding()
    }
}

struct PreviewMessageCard_Previews: PreviewProvider {
    static var previews: some View {
        PreviewMessageCard()
    }
}
