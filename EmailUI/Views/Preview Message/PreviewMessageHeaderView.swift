//
//  PreviewMessageHeaderView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/10/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct PreviewMessageHeaderView: View {
    
    var headerMeta: PreviewHeaderMeta
    
    var body: some View {
        
        let alignment: VerticalAlignment = headerMeta.subtitle != nil ? .top : .center
        return
    
            HStack(alignment: alignment) {
            
                Group {
                    headerMeta.image
                        .colorMultiply(headerMeta.imageColor)
                    
                    VStack(alignment: .leading, spacing: 5.0) {
                        
                        Text(headerMeta.category.rawValue)
                            .bold()
                        
                        if headerMeta.subtitle != nil {
                            Text(headerMeta.subtitle!)
                        }
                    }
                    Spacer()
                    Image("checkmark.circle")
                        .colorMultiply(.gray)
                }
            }
            .padding()
            .background(Color("MessageCategoryHeader"))
    }
}

struct PreviewMessageHeaderView_Previews: PreviewProvider {

    static var previews: some View {

        Group {
            PreviewMessageHeaderView(headerMeta:

                PreviewHeaderMeta(image: Image("unread"),
                                  category: MessageCategory.unread,
                                  subtitle: "skywalker@jedi.com",
                                  imageColor: .red, messages: [])
            )

            PreviewMessageHeaderView(headerMeta:
                PreviewHeaderMeta(image: Image("unread"),
                                  category: MessageCategory.snoozed,
                                  subtitle: nil,
                                  imageColor: .red, messages: [])
            )
        }
    }
}
