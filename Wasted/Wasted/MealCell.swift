//
//  MealCell.swift
//  Wasted
//
//  Created by Drew Scheffer on 10/28/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit

class MealCell: UITableViewCell {

    
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    func setMeal(meal: Meal){
        mealImageView.image = meal.image
        mealNameLabel.text = meal.title
    }
}
