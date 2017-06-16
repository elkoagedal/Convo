//
//  LoginViewController.swift
//  Convo
//
//  Created by Emily Koagedal on 6/13/17.
//  Copyright © 2017 Emily Koagedal. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore
import FirebaseAuth

class LoginViewController: UIViewController, LoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let accessToken = AccessToken.current
        
            //Already logged in
        
        
        //Do any additional setup after loading the view.
        let loginButton = LoginButton(readPermissions: [ .publicProfile])
        loginButton.delegate = self
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let credential = FacebookAuthProvider.credential(withAccessToken: (AccessToken.current?.authenticationToken)!)
        
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                // ...
                return
                
            }
            // User is signed in
            // ...
            
            let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "mainView")
            self.present(ViewController!, animated: true, completion: nil)
            
        }

                /*
        let defaults = UserDefaults(suiteName: "group.username.SuiteName")!
       ref.observeAuthEventWithBlock { [unowned self] (authData: FAuthData!) in
            if authData != nil {
                defaults.setObject(authData.token, forKey: "FAuthDataToken")
                defaults.synchronize()
            }
 */
        }
    //}
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        // Logged in
            }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        // Logged out
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
