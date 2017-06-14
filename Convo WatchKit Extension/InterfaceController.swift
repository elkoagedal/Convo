//
//  InterfaceController.swift
//  Convo WatchKit Extension
//
//  Created by Emily Koagedal on 6/12/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var quickButton: WKInterfaceButton!

    @IBOutlet var categoriesButton: WKInterfaceButton!
    @IBOutlet var notesButton: WKInterfaceButton!
    @IBOutlet var favoritesButton: WKInterfaceButton!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
