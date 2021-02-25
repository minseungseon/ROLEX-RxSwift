//
//  ViewController.swift
//  kakaoLoginTest
//
//  Created by 선민승 on 2021/02/25.
//

import UIKit
import KakaoSDKAuth

class ViewController: UIViewController {

    @IBOutlet var kakaoLoginButton: UIButton!
    
    @IBAction func kakaoLoginButtonPressed(_ sender: Any) {
        kakaoLogin()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kakaoLoginButton.setTitle("카카오로 로그인하기", for: .normal)
    }


    func kakaoLogin() {
        if (AuthApi.isKakaoTalkLoginAvailable()) {
            AuthApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        }
    }
}

