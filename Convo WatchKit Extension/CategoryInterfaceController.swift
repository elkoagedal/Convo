//
//  CategoryInterfaceController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/16/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import WatchKit
import Foundation

class CategoryInterfaceController: WKInterfaceController {

    //var wcSession: WCSession!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    
    
    
    }
    
 
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        /*
        wcSession = WCSession.default()
        wcSession.delegate = self
        wcSession.activate()
 */
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}


