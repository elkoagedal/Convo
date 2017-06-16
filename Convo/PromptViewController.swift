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
//import WatchConnectivity

class PromptViewController: UIViewController {

    
    
    @IBOutlet weak var promptText: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var iconImage: UIButton!
    
    var category: String?
    var categoryDto: CategoryDto?
    var index = 1
    //var wcSession: WCSession!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        /*
        wcSession = WCSession.default()
        wcSession.delegate = self
        wcSession.activate()
        
 */
        Alamofire.request("https://convo-a15d7.firebaseio.com/categories.json").responseJSON {
            response in switch response.result {
            case .success(let json):
                self.categoryDto = CategoryDto(json: json as! Gloss.JSON)
                print(self.categoryDto)
            default:
                break
                
            }
        
            if self.category == "awkwardDate" {
                self.promptText.text = self.categoryDto!.awkwardDate?[0]
                self.iconImage.setImage(UIImage(named: "broken-heart"), for: .normal)
            }
            if self.category == "iceBreaker" {
                self.promptText.text = self.categoryDto!.iceBreaker?[0]
            }
            if self.category == "news" {
                self.promptText.text = self.categoryDto!.news?[0]
                self.iconImage.setImage(UIImage(named: "newspaper"), for: .normal)
            }
            if self.category == "throwbacks" {
                self.promptText.text = self.categoryDto!.throwbacks?[0]
                self.iconImage.setImage(UIImage(named: "history"), for: .normal)
            }
            if self.category == "interview" {
                self.promptText.text = self.categoryDto!.interview?[0]
                self.iconImage.setImage(UIImage(named: "interview-room"), for: .normal)
            }
            
        }
        
        /*
        if let validSession = wcSession {
            let iPhoneAppContext = ["category": "iceBreaker"]
            
            do {
                try validSession.updateApplicationContext(iPhoneAppContext)
            } catch {
                print("Something went wrong")
            }
        }
        
        */
 
        
        }

/*

    override func viewWillAppear(_ animated: Bool) {
       
    }
*/
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
*/
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
        if self.category == "awkwardDate" {
            index += 1
            self.promptText.text = self.categoryDto!.awkwardDate?[index]
        }
        if self.category == "iceBreaker" {
            index += 1
            self.promptText.text = self.categoryDto!.iceBreaker?[index]
        }
        if self.category == "news" {
            index += 1
            self.promptText.text = self.categoryDto!.news?[index]
        }
        if self.category == "throwback" {
            index += 1
            self.promptText.text = self.categoryDto!.throwbacks?[index]
        }
        if self.category == "interview" {
            index += 1
            self.promptText.text = self.categoryDto!.interview?[index]
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        if self.category == "awkwardDate" {
            index -= 1
            self.promptText.text = self.categoryDto!.awkwardDate?[index]
        }
        if self.category == "iceBreaker" {
            index -= 1
            self.promptText.text = self.categoryDto!.iceBreaker?[index]
        }
        if self.category == "throwback" {
            index -= 1
            self.promptText.text = self.categoryDto!.throwbacks?[index]
        }
        if self.category == "interview" {
            index -= 1
            self.promptText.text = self.categoryDto!.interview?[index]
        }
        if self.category == "news" {
            index -= 1
            self.promptText.text = self.categoryDto!.news?[index]
        }
    }


}
