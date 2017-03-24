//
//  ErrorAlert.swift
//  WatchGetPay
//
//  Created by John Law on 24/3/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit

let errorAlert = ErrorAlert()

class ErrorAlert: NSObject {
    func newError(message: String, scene: UIViewController) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(OKAction)
        scene.present(alertController, animated: true)
    }
    
    func newError(messages: [String], scene: UIViewController) {
        var message = ""
        message += messages[0]
        for i in 1...messages.count-1 {
            message += "\n" + messages[i]
        }
        newError(message: message, scene: scene)
    }

}
