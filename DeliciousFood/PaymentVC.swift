//
//  PaymentVC.swift
//  Delicious Food//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit

class PaymentVC: UIViewController {

    @IBOutlet weak var pullDownBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMenu()
        
    }
    
    @IBAction func submitBtnTapped(_ sender: UIButton) {
        
        self.navigationController?.dismiss(animated: true)
        
        let alert = UIAlertController(title: "Luigi's",
                                      message: "Payment Successfully Done",
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
            
            
            alert.addAction(okAction)
            present(alert, animated: true)
    }
    
    @IBAction func selectCardBtnTapped(_ sender: UIButton) {
    
 }
   func setupMenu() {
       let add = UIAction(title: "Add") { (action) in
               print("Add")
           }
           let edit = UIAction(title: "Edit") { (action) in
               print("Edit")
           }
           let delete = UIAction(title: "Delete", attributes: .destructive) { (action) in
               print("Delete")
           }
        
           let menu = UIMenu(children: [add, edit, delete])
           pullDownBtn.menu = menu
        
    
 }
}
