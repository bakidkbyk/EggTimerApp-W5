//
//  ViewController.swift
//  EggTimerApp-W5
//
//  Created by Baki Dikbıyık on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "EGG APP"
    }

    
    @IBAction func segueButton(_ sender: Any) {
        switch segmentedController.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: "goToSoft", sender: nil)
        case 1:
            performSegue(withIdentifier: "goToMedium", sender: nil)
        case 2:
            performSegue(withIdentifier: "goToHard", sender: nil)
        default:
            break
        }
    }
}

