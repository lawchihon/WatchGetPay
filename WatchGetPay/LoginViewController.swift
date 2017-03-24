//
//  LoginViewController.swift
//  WatchGetPay
//
//  Created by John Law on 24/3/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
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
    
    @IBAction func onBackwardButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        loadingProgress.startLoading(view: self.view)
        
        let email = emailTextField.text
        let password = passwordTextField.text
        var errors = [String]()
        
        if email == nil || email == "" {
            errors.append("Email cannot be blank")
        }
        
        if password == nil || password == "" {
            errors.append("Password cannot be blank")
        }
        
        if errors == [] {
            database.login(email: email, password: password,
                success: {
                    () in
                    loadingProgress.endLoading(view: self.view)
                    self.dismiss(animated: true, completion: nil)
                },
                failure: {
                    (error) in
                    errorAlert.newError(message: error.localizedDescription, scene: self)
                    loadingProgress.endLoading(view: self.view)
                }
            )
        }
        else {
            errorAlert.newError(messages: errors, scene: self)
            loadingProgress.endLoading(view: self.view)
        }
    }

}
