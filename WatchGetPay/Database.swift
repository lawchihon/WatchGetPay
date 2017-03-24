//
//  Database.swift
//  WatchGetPay
//
//  Created by John Law on 24/3/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit

let database = Database()

class Database: NSObject {
    let hosting = Firebase()
    var currentUser: User?

    func signUp(email: String!, password: String!, success: @escaping () -> (), failure: @escaping (Error) -> ()) {
        hosting.signUp(email: email, password: password,
            success: {
                (user) in
                self.currentUser = user
                success()
            },
            failure: {
                (error) in
                failure(error)
            }
        )
    }
    
    func login(email: String!, password: String!, success: @escaping () -> (), failure: @escaping (Error) -> ()) {
        hosting.login(email: email, password: password,
            success: {
                (user) in
                self.currentUser = user
                success()
            },
            failure: {
                (error) in
                failure(error)
            }
        )
    }
}
