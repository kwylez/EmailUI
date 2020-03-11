//
//  PreviewMessageHeaderView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/10/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct PreviewHeaderMeta {
    
    let image: Image
    
    let category: MessageCategory
    
    let subtitle: String?
}

struct PreviewMessageHeaderView: View {
    
    var headerMeta: PreviewHeaderMeta
    
    var body: some View {
        
        return
            
            HStack {
            
                headerMeta.image
                
                VStack(alignment: .leading) {
                    
                    Text(headerMeta.category.rawValue)
                    if headerMeta.subtitle != nil {
                        Text(headerMeta.subtitle!)
                    }
                }
                Spacer()
                Image("checkmark.circle")
            }
    }
}

struct PreviewMessageHeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            PreviewMessageHeaderView(headerMeta:
                PreviewHeaderMeta(image: Image("unread"),
                                  category: MessageCategory.unread,
                                  subtitle: "skywalker@jedi.com")
            )
            
            PreviewMessageHeaderView(headerMeta:
                PreviewHeaderMeta(image: Image("unread"),
                                  category: MessageCategory.snoozed,
                                  subtitle: nil)
            )
        }
    }
}
