//
//  InfoVC.swift
//  Delicious Food//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit

class InfoVC: UIViewController {

    @IBOutlet weak var infoimgview: UIImageView!
    
    @IBOutlet weak var infoPriLabel: UILabel!
    
    @IBOutlet weak var infoLable: UILabel!
    
    @IBOutlet weak var recipeLabel: UILabel!
    
    @IBOutlet weak var shortInfoLabel: UILabel!
    
    var img = UIImage()
    var label_name = ""
    var label_pri = ""
    var label_infoo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoimgview.layer.cornerRadius = 30
        infoimgview.image = img
        infoLable.text = label_name
        infoPriLabel.text = label_pri
        shortInfoLabel.text = label_infoo

    }
    
    @IBAction func OrderBtnTapped(_ sender: UIButton) {
        let  i = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.navigationController?.present(i, animated: true)
        
    }
    
    @IBAction func locationBtnTapped(_ sender: UIButton) {
        let j = storyboard?.instantiateViewController(withIdentifier: "MapVC") as! MapVC
        self.navigationController?.pushViewController(j, animated: true)
        
    }
    
    
    @IBAction func deliveryBtnTapped(_ sender: UIButton) {
        let k = storyboard?.instantiateViewController(withIdentifier: "TimerVC") as! TimerVC
        self.navigationController?.pushViewController(k, animated: true)
        
    }
    
}
