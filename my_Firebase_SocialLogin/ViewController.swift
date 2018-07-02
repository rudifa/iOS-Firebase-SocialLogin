//
//  ViewController.swift
//  my_Firebase_SocialLogin
//
//  Created by Rudolf Farkas on 02.07.18.
//  Copyright © 2018 Rudolf Farkas. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)

        // quick fix, should use autolayout constraints instead
        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)

        loginButton.delegate = self
    }

    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Did log out of facebook")
    }

    func loginButton(_ loginButton: FBSDKLoginButton, didCompleteWith didCompleteWithResult: FBSDKLoginManagerLoginResult, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        print("Successfully logged in with facebook")
    }


}

