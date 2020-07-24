//
//  HomeController.swift
//  Bonfire
//
//  Created by Daniel Yang on 7/22/20.
//  Copyright © 2020 Daniel Yang. All rights reserved.
//

import UIKit
import GoogleSignIn

class HomeController: UIViewController {

    @IBOutlet var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance()?.presentingViewController = self

        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        
        if GIDSignIn.sharedInstance()?.currentUser != nil {
            signInButton.isHidden = true
        }
    }
    
}
