//
//  ViewController.swift
//  Delicious Food//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passtext: UITextField!
    @IBOutlet weak var usernametext: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func loginBtnTapped(_ sender: UIButton){
        
        
        let a = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        self.navigationController?.pushViewController(a, animated: true)
        
    }
    
    @IBAction func forgetBtnTapped(_ sender: UIButton) {
        let b = storyboard?.instantiateViewController(withIdentifier: "ForgetPassVC") as! ForgetPassVC
        self.navigationController?.pushViewController(b, animated: true)
        
        
        
    }
    @IBAction func signupBtnTappes(_ sender: UIButton) {
        let c = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(c, animated: true)
        
        
        
    }
}

