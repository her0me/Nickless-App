//
//  ScoreBreakdownViewController.swift
//  Wasted
//
//  Created by Drew Scheffer on 3/4/20.
//  Copyright © 2020 Drew Scheffer. All rights reserved.
//

import UIKit

class ScoreBreakdownViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.healthPopover.layer.cornerRadius = 10
    }
    

    @IBOutlet var healthPopover: UIView!
    
    @IBAction func HealthPopoverDoneButtonPressed(_ sender: Any) {
        self.healthPopover.removeFromSuperview();
    }
    @IBAction func healthButtonTapped(_ sender: Any) {
        self.view.addSubview(healthPopover)
        healthPopover.center = self.view.center
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
