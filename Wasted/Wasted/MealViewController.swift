//
//  MealViewController.swift
//  Wasted
//
//  Created by Drew Scheffer on 10/29/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {

    var mealImage: Meal!
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = mealImage.image
        TitleLabel.text = mealImage.title
        
        // Do any additional setup after loading the view.
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
