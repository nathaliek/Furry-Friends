//
//  LoginViewController.swift
//  Furry Friends
//
//  Created by Nathalie Kowalczyk on 2/17/15.
//  Copyright (c) 2015 Nathalie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var didPressLoginButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPressLoginButton(sender: AnyObject) {
        loadingView.startAnimating()
        
        if (emailField.text == "nathaliek" && passwordField.text == "password") {
           didPressLoginButton.enabled = true
            delay(1, { () -> () in
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                self.didPressLoginButton.enabled = false
                self.loadingView.stopAnimating()
            })

            
        } else {
            var alertView = UIAlertView (title: "Ooops", message: "Please enter a valid email", delegate: nil, cancelButtonTitle: "OK")
            alertView.show ()
            self.loadingView.stopAnimating()
          
        }
        
};
}