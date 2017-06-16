//
//  NoteDto.swift
//  Convo
//
//  Created by Emily Koagedal on 6/15/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import Foundation
import UIKit
import Gloss

class NoteDto: Decodable, Glossy {
    
    var title: String?
    var note: String?
    var date: String?
    
    init?() {
        self.title = ""
        self.note = ""
        self.date = ""
    }
    
    required init?(json: JSON) {
        self.title = "title" <~~ json
        self.note = "note" <~~ json
        self.date = "date" <~~ json
    }
    
    func toJSON() -> JSON? {
        return jsonify([
            "title" ~~> self.title,
            "note" ~~> self.note,
            "date" ~~> self.date,
            ])
    }
    
}

