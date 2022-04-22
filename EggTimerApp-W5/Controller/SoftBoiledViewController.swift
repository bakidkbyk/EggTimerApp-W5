//
//  SoftBoiledViewController.swift
//  EggTimerApp-W5
//
//  Created by Baki Dikbıyık on 21.04.2022.
//

import UIKit

class SoftBoiledViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var buttonCheck: UIButton!
    
    
    
    var timer = Timer()
    var counter = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func startButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func getTimer(){
        
        if counter > 0 {
            counter -= 1
            timerLabel.text = "\(counter)"
            buttonCheck.isEnabled = false
        }else {
            timer.invalidate()
            timerLabel.text = "Yumurta hazır."
            getAlert()
            buttonCheck.isEnabled = true
            counter = 5
            
          
            
        }
        
    }
    
    func getAlert(){
        
        let alert = UIAlertController.init(title: "Info", message: "Egg is ready!", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        
        alert.addAction(alertAction)
        
        self.present(alert, animated: true)
        
        
    }
    
    
    
}
