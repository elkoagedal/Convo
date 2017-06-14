//
//  AddNoteViewController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/13/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import UIKit
import Firebase

class AddNoteViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var noteText: UITextView!
    @IBOutlet weak var breakButton: UIButton!
    @IBOutlet weak var boldButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
