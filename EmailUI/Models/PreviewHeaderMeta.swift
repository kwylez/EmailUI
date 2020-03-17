//
//  PreviewHeaderMeta.swift
//  EmailUI
//
//  Created by Cory D. Wiles on 3/16/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import Foundation
import SwiftUI

struct PreviewHeaderMeta {
    
    let image: Image
    
    let category: MessageCategory
    
    let subtitle: String?
    
    let imageColor: Color
    
    let messages: Array<Message>
}
