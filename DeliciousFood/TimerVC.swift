//
//  TimerVC.swift
//  Delicious Food//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit

class TimerVC: UIViewController {

    @IBOutlet weak var timerLable: UILabel!
    
    var counter = 30
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func startBtnTapped(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(timeFire), userInfo: nil, repeats: true)
       
    }
    
    @objc func timeFire()
    {
        counter = counter - 1
        timerLable.text = "\(counter)"
        if counter == 0
        {
            if timer.isValid
            {
                timer.invalidate()
                counter = 30
            }
        }
        print("timeFire call...")
    }
    
    @IBAction func stopBtnTapped(_ sender: UIButton) {
        
        if timer.isValid
        {
            timer.invalidate()
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
         
        if timer.isValid{
            timer.invalidate()
            
    }
 }
}
