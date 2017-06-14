//
//  CategoryDto.swift
//  Convo
//
//  Created by Emily Koagedal on 6/14/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import Foundation
import Gloss

class CategoryDto: Decodable {
    
    var awkwardDate: [String]?
    
    init() {
        self.awkwardDate = []
    }
    
    required init?(json: JSON) {
        self.awkwardDate = "awkwardDate" <~~ json
        
    }
    
}
