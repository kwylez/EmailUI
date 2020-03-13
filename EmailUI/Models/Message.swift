//
//  Message.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/11/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import Foundation

struct Message {
    
    let author: User
    
    let subject: String
    
    let createdDate: Date
    
    let friendlyDate: String
}
