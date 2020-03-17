//
//  MessageData.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/17/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import Foundation
import SwiftUI

var users: Array<User> {
    
    return [
        User(name: "Mom", profileImage: Image("profile.1")),
        User(name: "Mark & Sara", profileImage: Image("profile.2")),
        User(name: "Brett", profileImage: Image("profile.3")),
        User(name: "Oki", profileImage: Image("profile.4")),
        User(name: "Primrose", profileImage: Image("profile.5")),
        User(name: "10th Admendment Center", profileImage: Image("profile.6")),
    ]
}

var unreadMessages: Array<Message> {
    return [
    
        Message(author: users[0],
                subject: "Finally we made!",
                createdDate:  Calendar.current.date(byAdding: .day, value: -2, to: Date())!,
                text: """
                From volcanic landscapes to hidden waterfalls… active adventures to an energetic nightlife… a holiday on the Hawaiian Islands offers infinite experiences in one destination. Each of the six major islands – Kauai, Oahu, Molokai, Lanai, Maui, and the island of Hawaii – has its own distinct personality, but no matter which ones you choose, you’ll discover endless opportunities for adventure, dining, culture and relaxation.
                """),
        
        Message(author: users[1],
                subject: "Celebrate with Us",
                createdDate: Calendar.current.date(byAdding: .day, value: -1, to: Date())!,
                text: """
                Something borrowed and something blue. Some things are old, some things are new.
                Someone to care and share your life, the dream of every husband and wife.
                """)
    ]
}

var snoozedMessages: Array<Message> {
    return [
    
        Message(author: users[2],
                subject: "Family Reunion Time",
                createdDate: Calendar.current.date(byAdding: .day, value: -3, to: Date())!,
                text: """
                This play is fully protected under the copyright laws of the United States of America, the British Empire, including the Dominion of Canada, and all other countries of the
                Copyright Union, and is subject to royalty. No performance, whether amateur or professional, may take place in the United States of America or Canada without a licence. Such licence can only be obtained from the Mercury Theatre, 2 Ladbroke Road, London, IV. 1 1, England, or from the American agents who may be accredited by the Author in due course. All enquiries will be answered by the publishers, Harcourt, Brace and Company, Inc., 383 Madison Avenue, New York, N. Y.
                """),
        
        Message(author: users[3],
                subject: "Don't miss out on the 50% off sale",
                createdDate: Calendar.current.date(byAdding: .day, value: -7, to: Date())!,
                text: """
                While today Sunkist is a mega-brand, there was a period of time where they were growing more oranges than their customers were eating. They actually had to start cutting orange trees down. They ended up hiring an advertising genius named Albert Lasker who introduced American's to the idea of "orange juice". He patented an orange juice extractor, sold it for .10 cents a piece and American's started buying oranges in droves. The campaign name? Drink and Orange. It's a concept that is anything but new to us today, but back then it made for killer copywriting.
                """)
    ]
}

var newsletterMessages: Array<Message> {
    return [
    
        Message(author: users[4],
                subject: "Important Primrose Parent Information",
                createdDate: Calendar.current.date(byAdding: .day, value: -4, to: Date())!,
                text: """
                Primrose School of Hixson Parents,

                Like you, we continue to closely follow the coronavirus (COVID-19) situation as it escalates. Our priority is the health and safety of your children, our team members and each member of our school’s family. We are actively monitoring recommendations from the Centers for Disease Control and Prevention (CDC) and local health officials – their direction will continue to guide our actions.
                """),
        
        Message(author: users[5],
                subject: "Can the Government Restrict Travel to Protect Public Health?",
                createdDate: Calendar.current.date(byAdding: .day, value: -5, to: Date())!,
                text: """
                The issue of whether government in America can quarantine persons against their will, ostensibly for their own health and that of others with whom they may come in contact, requires a dual analysis — one of the powers of the federal government and the other of the powers of the states. For constitutional analysis purposes, since local and regional governments derive their powers from the states in which they are located, the analysis of state powers pertains to them as well.
                """)
    ]
}

var data: Array<PreviewHeaderMeta> {
    return [
    
        PreviewHeaderMeta(image: Image("unread"),
                          category: MessageCategory.unread,
                          subtitle: "skywalker@jedi.com",
                          imageColor: .blue,
                          messages: unreadMessages),
                          
        PreviewHeaderMeta(image: Image("snoozed"),
                          category: MessageCategory.snoozed,
                          subtitle: nil,
                          imageColor: Color("Snoozed"),
                          messages: snoozedMessages),
        
        PreviewHeaderMeta(image: Image("newsletter"),
                          category: MessageCategory.newsletters,
                          subtitle: nil,
                          imageColor: Color("Newsletter"),
                          messages: newsletterMessages)
    ]
}
