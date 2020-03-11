//
//  CalendarCell.swift
//  Wasted
//
//  Created by Drew Scheffer on 3/5/20.
//  Copyright © 2020 Drew Scheffer. All rights reserved.
//

import Foundation
import UIKit

class CalendarCell: UITableViewCell{
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var mealLabel: UILabel!
    // @IBOutlet weak var ImageView: UIImageView!
    //@IBOutlet weak var mealLabel: UILabel!
    
    func set(meal: MealC){
        ImageView.image = meal.image
        mealLabel.text = meal.title
    }
}

