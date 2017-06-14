//
//  PromptViewController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/13/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import UIKit
import Alamofire
import Gloss

class PromptViewController: UIViewController {

    @IBOutlet weak var promptText: UITextView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var category: String?
    var categoryDto: CategoryDto?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Alamofire.request("https://convo-a15d7.firebaseio.com/categories.json").responseJSON {
            response in switch response.result {
            case .success(let json):
                self.categoryDto = CategoryDto(json: json as! Gloss.JSON)
                print(self.categoryDto)
            default:
                break
            }
        }
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
    @IBAction func favoriteButton(_ sender: Any) {
    }
    @IBAction func nextButton(_ sender: Any) {
    }
    @IBAction func backButton(_ sender: Any) {
    }

}
