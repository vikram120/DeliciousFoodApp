//
//  ForgetPassVC.swift
//  Delicious Food
//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit

class ForgetPassVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func submitBtnTapped(_ sender: UIButton) {
        let e = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(e, animated: true)
        
        
        
    }
    
}
