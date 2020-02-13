//
//  ServicesViewController.swift
//  
//
//  Created by Drew Scheffer on 2/13/20.
//

import UIKit

class ServicesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SNAPInfoButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.benefits.gov/benefit/361")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func SNAPEligibilityButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.benefits.gov/benefit/361#Eligibility_Checker")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func WICInfoButton(_ sender: Any) {
       UIApplication.shared.open(URL(string:"https://www.fns.usda.gov/wic/about-wic")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func WICEligibilityButton(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.fns.usda.gov/wic/wic-eligibility-requirements")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func MSUCookingInfo(_ sender: Any) {
       UIApplication.shared.open(URL(string:"https://www.canr.msu.edu/cooking_matters/")! as URL, options: [:], completionHandler: nil) 
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
