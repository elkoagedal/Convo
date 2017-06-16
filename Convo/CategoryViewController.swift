//
//  CategoryViewController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/12/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import UIKit
//import WatchConnectivity


class CategoryViewController: UIViewController {
    
   // var wcSession: WCSession!
    
    @IBOutlet weak var icebreakerButton: UIButton!
    @IBOutlet weak var throwbackButton: UIButton!
    @IBOutlet weak var newsButton: UIButton!
    @IBOutlet weak var favoritesButton: UIButton!
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var interviewButton: UIButton!
    @IBOutlet weak var awkdateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        wcSession = WCSession.default()
        wcSession.delegate = self
        wcSession.activate()

 */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! PromptViewController
        vc.category = segue.identifier
    }
    
    
    @IBAction func iceBreaker(_ sender: Any) {
    }
    
}


