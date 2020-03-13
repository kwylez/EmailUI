//
//  LeftView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct LeftView: View {
    
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
                            .foregroundColor(Color("SeletedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("UnSelectedLeftMenu"))
                            .frame(height: 64.0)
                        Image("compose")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Spacer()
                }
                .frame(width: 64.0)
                ScrollView {
                    PreviewMessageCard()
                    PreviewMessageCard()
                    PreviewMessageCard()
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
