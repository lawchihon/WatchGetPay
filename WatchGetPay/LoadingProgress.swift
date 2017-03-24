//
//  LoadingProgress.swift
//  WatchGetPay
//
//  Created by John Law on 24/3/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit
import MBProgressHUD

let loadingProgress = LoadingProgress()

class LoadingProgress {
    func startLoading(view: UIView) {
        MBProgressHUD.showAdded(to: view, animated: true)
    }
    
    func endLoading(view: UIView) {
        MBProgressHUD.hide(for: view, animated: true)
    }
}
