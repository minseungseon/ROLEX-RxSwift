//
//  ViewController.swift
//  googleLoginTest
//
//  Created by 김민희 on 2021/02/09.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().presentingViewController = self
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        // Do any additional setup after loading the view.
    }
    
    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
      withError error: NSError!) {
        if (error == nil) {
          // Perform any operations on signed in user here.
          // ...
        } else {
          print("\(error.localizedDescription)")
        }
    }


}

