//
//  AuthorizeViewController.swift
//  WatchGetPay
//
//  Created by John Law on 24/3/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit

class AuthorizeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if database.currentUser != nil {
            performSegue(withIdentifier: "authorizedSegue", sender: nil)
        }
        loadingProgress.endLoading(view: self.view)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        loadingProgress.startLoading(view: self.view)
    }
}
