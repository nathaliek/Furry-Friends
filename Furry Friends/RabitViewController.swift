//
//  RabitViewController.swift
//  Furry Friends
//
//  Created by Nathalie Kowalczyk on 2/10/15.
//  Copyright (c) 2015 Nathalie. All rights reserved.
//

import UIKit

class RabitViewController: UIViewController, UIActionSheetDelegate {
    
    @IBOutlet weak var bunnyView: UIImageView!
    @IBOutlet weak var didPressRightButton: UIButton!
    @IBOutlet weak var didPressLeftButton: UIButton!
    @IBOutlet weak var didPressUpButton: UIButton!
    @IBOutlet weak var didPressDownButton: UIButton!
    @IBOutlet weak var didPressHideButton: UIButton!
    @IBOutlet weak var didPressAppearButton: UIButton!
    @IBOutlet weak var didPressLeafButton: UIButton!
    @IBOutlet weak var didPressRotateLeftButton: UIButton!
    @IBOutlet weak var didPressResetButton: UIButton!
    @IBOutlet weak var didPressTearButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var didPressAskButton: UIButton!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    @IBOutlet weak var didPressLogoutButton: UIButton!
    
    var scale: CGFloat = 1
    var rotation: CGFloat! = 0
    
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
    
    @IBAction func didPressLeftButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            self.bunnyView.center.x = self.bunnyView.center.x - 20
            
        })
    }
    
    @IBAction func didPressRightButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            self.bunnyView.center.x = self.bunnyView.center.x + 20
        })
    }
    
    @IBAction func didPressUpButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            self.bunnyView.center.y = self.bunnyView.center.y - 20
        })
    }
    
    @IBAction func didPressDownButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            self.bunnyView.center.y = self.bunnyView.center.y + 20
        })
    }
    
    @IBAction func didPressHideButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            
            self.bunnyView.alpha = 0
            self.bunnyView.transform = CGAffineTransformMakeScale (0.1, 0.1)
        })
    }
    
    @IBAction func didPressAppearButton(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            
            self.bunnyView.alpha = 1
            self.bunnyView.transform = CGAffineTransformMakeScale (1, 1)
        })
    }
    
    @IBAction func didPressLeafButton(sender: AnyObject) {
        scale = scale + 0.5
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            self.bunnyView.transform = CGAffineTransformMakeScale (self.scale , self.scale)
        })
        

    }
    
    @IBAction func didPressRotateLeftButton(sender: AnyObject) {
        rotation = rotation + 30
        var rotationTransform = CGAffineTransformMakeRotation(CGFloat(rotation))
        var scaleTransform = CGAffineTransformMakeScale (scale, scale)
        var transform = CGAffineTransformConcat(rotationTransform, scaleTransform)
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
         self.bunnyView.transform = transform
        })
    
    }
    
    @IBAction func didPressResetButton(sender: AnyObject) {
        self.bunnyView.transform = CGAffineTransformMakeScale (1,1)
    }
    
    @IBAction func didPressTearButton(sender: AnyObject) {
        scale = scale - 0.5
        UIView.animateWithDuration(0.5, animations:{ () -> Void in
            self.bunnyView.transform = CGAffineTransformMakeScale (self.scale , self.scale)
        })

}
  
    @IBAction func didPressAskButton(sender: AnyObject) {
        loadingView.startAnimating()
        
        textLabel.text = ""
        
        delay(0.5, { () -> () in
            if (self.textField.text=="What is your name?") {
                self.textLabel.text = "Mr. Bunny"
            } else if (self.textField.text == "Will you be my friend?") {
                self.textLabel.text = "Yes, of course"
            }
            self.loadingView.stopAnimating()
        })
     
        }
    
    @IBAction func didPressLogoutButton(sender: AnyObject) {
        var actionSheetView = UIActionSheet(title: "Are you sure?", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Logout")
        actionSheetView.showInView(view)
        
    }
        }
    

