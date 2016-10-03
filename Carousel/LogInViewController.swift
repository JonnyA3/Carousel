//
//  LogInViewController.swift
//  Carousel
//
//  Created by Abowd, Jonathan on 10/1/16.
//  Copyright © 2016 Abowd, Jonathan. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var fieldScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    
    var fieldInitialY: CGFloat!
    var fieldOffset: CGFloat!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -200
        
        
        fieldScrollView.delegate = self
        
        // Set the scroll view content size
        fieldScrollView.contentSize = fieldScrollView.frame.size
        // Set the content insets
        fieldScrollView.contentInset.bottom = 130
        
        
        fieldInitialY = fieldParentView.frame.origin.y
        fieldOffset = -100
        
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // Any code you put in here will be called when the keyboard is about to display
            
            self.fieldParentView.frame.origin.y = self.fieldInitialY + self.fieldOffset
    
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            
            
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // Any code you put in here will be called when the keyboard is about to hide
            
            self.fieldParentView.frame.origin.y = self.fieldInitialY
    
            self.buttonParentView.frame.origin.y = self.buttonInitialY
            
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTap(_ sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    
    
    func run(after wait: TimeInterval, closure: @escaping () -> Void) {
        let queue = DispatchQueue.main
        queue.asyncAfter(deadline: DispatchTime.now() + wait, execute: closure)
    }
    
    @IBAction func didPressSignIn(_ sender: AnyObject) {
        
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty
        {
            // Code that runs if either field is empty
            
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            
            present(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        } else
        {
            // Code that runs if either field has text

            self.activityIndicator.startAnimating()

            // Delay for 2 seconds, then run the code between the braces.
            let secondsToDelay = 2.0
            run(after: secondsToDelay)
            {
                // This code will run after the delay
                
                if self.emailField.text == "jonny@wesomesauce.com" && self.passwordField.text == "password" {
                    // Code that runs if both email and password match the text we are looking for in each case
                    
                        self.performSegue(withIdentifier: "signIn", sender: nil)
                    
                    
                } else
                {
                    // Code that runs if either the email or password do NOT match the text we are looking for in each case
                    
                    let alertController = UIAlertController(title: "Invalid Email or Password", message: "Please enter a valid Email and Password", preferredStyle: .alert)
                    
                    // create an OK action
                    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                        // handle response here.
                    }
                    // add the OK action to the alert controller
                    alertController.addAction(OKAction)
                    
                    
                    self.present(alertController, animated: true) {
                        // optional code for what happens after the alert controller has finished presenting
                        self.activityIndicator.stopAnimating()
                        
                    }
                
                }
                
            }
            
            
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
}
