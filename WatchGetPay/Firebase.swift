//
//  Firebase.swift
//  WatchGetPay
//
//  Created by John Law on 24/3/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit
import FirebaseAuth

class Firebase: NSObject {
    func signUp(email: String, password: String!, success: @escaping (User) -> (), failure: @escaping (Error) -> ()) {
        FIRAuth.auth()!.createUser(withEmail: email, password: password) {
            (user, error) in
            if user == nil {
                failure(error!)
            }
            if error == nil {
                success(User.init(email: user?.email))
            }
        }
    }

    func login(email: String, password: String!, success: @escaping (User) -> (), failure: @escaping (Error) -> ()) {
        FIRAuth.auth()!.signIn(withEmail: email, password: password) {
            (user, error) in
            if user == nil {
                failure(error!)
            }
            if error == nil {
                success(User.init(email: user?.email))
            }
        }
    }
}
