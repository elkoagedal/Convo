//
//  PromptInterfaceController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/16/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class PromptInterfaceController: WKInterfaceController {

    var wcSession: WCSession!
   

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        /*
        if (WCSession.isSupported()) {
            wcSession = WCSession.default()
            wcSession.delegate = self
            wcSession.activate()
            
            sendmessagetoiphone()
        }
        
        func sendMessageToIphone() {
            if(WCSession.isSupported()){
                wcSession.sendMessage(["b":"goodBye"], replyHandler: nil, errorHandler: nil)
            }
    }
 */
    }
 
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }


}
