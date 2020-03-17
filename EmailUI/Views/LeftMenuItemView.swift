//
//  LeftMenuItemView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/17/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct LeftMenuItemView: View {
    
    var image: String
    
    var index: Int
    
    @Binding var selectedIndex: Int
    
    var body: some View {
    
        ZStack {
            Rectangle()
                .foregroundColor(
                    self.selectedIndex == self.index ? Color("SelectedLeftMenu") : Color("UnSelectedLeftMenu")
                )
                .animation(.default)
                .frame(height: 64.0)
            Image(image)
                .resizable()
                .frame(width: 24, height: 24)
        }
        .onTapGesture {
            self.selectedIndex = self.index
        }
    }
}

struct LeftMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuItemView(image: "menu.unread", index: 0, selectedIndex: .constant(0))
    }
}
