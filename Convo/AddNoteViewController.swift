//
//  AddNoteViewController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/13/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import UIKit
import Firebase
import Alamofire

class AddNoteViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var noteText: UITextView!
    @IBOutlet weak var breakButton: UIButton!
    @IBOutlet weak var boldButton: UIButton!
    @IBOutlet weak var CancelButton: UIBarButtonItem!
    @IBOutlet weak var DoneButton: UIBarButtonItem!
    
    var delegate: addNoteDelegate?
    var newNote: NoteDto?
    
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

    @IBAction func CancelButton(_ sender: Any) {
        delegate?.didCancelNote()
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func DoneButton(_ sender: Any) {
        newNote?.title = titleText.text!
        newNote?.note = noteText.text!
        
        func postActivity() {
            Alamofire.request("https://convo-a15d7.firebaseio.com/YourNotes.json", method: .post, parameters: newNote?.toJSON(), encoding: JSONEncoding.default).responseJSON { response in
                
                switch response.result {
                case .success(let _):
                    self.delegate?.didSaveNote(Note: self.newNote!)
                    self.dismiss(animated: true, completion: nil)
                case .failure: break
                    // Failure... handle error
                }
            }
        }
        postActivity()
    }
}
