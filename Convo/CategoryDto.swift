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
    var iceBreaker: [String]?
    var interview: [String]?
    var throwbacks: [String]?
    var news: [String]?
    
    init() {
        self.awkwardDate = []
        self.iceBreaker = []
        self.interview = []
        self.throwbacks = []
        self.news = []
    }
    
    required init?(json: JSON) {
        self.awkwardDate = "awkwardDate" <~~ json
        self.iceBreaker = "iceBreaker" <~~ json
        self.news = "news" <~~ json
        self.throwbacks = "throwbacks" <~~ json
        self.interview = "interview" <~~ json



        
    }
    
    
}
