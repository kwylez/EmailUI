//
//  RightView.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/6/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

private let sampleMesage: String = """
Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Seperated they live in Bookmarksgove right at the coast of the Sematics, a large language ocean.

A small river named Dunden flows by their place and supplies it wit the cessary regelialia. It is a paradisematic ountry, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life. One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.
"""

struct RightView: View {
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                MessageHeaderView()
                Text("We're getting married - Ronald and Kelly")
                    .font(.system(.largeTitle))
                    .foregroundColor(.black)
                    .padding()
                ///
                
                Text(sampleMesage)
                    .font(.system(.footnote))
                    .foregroundColor(.gray)
                    .padding()
                
                ///
                Spacer()
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct RightView_Previews: PreviewProvider {
    static var previews: some View {
        RightView()
    }
}
