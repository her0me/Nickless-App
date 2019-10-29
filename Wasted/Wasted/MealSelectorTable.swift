//
//  MealSelectorTable.swift
//  Wasted
//
//  Created by Drew Scheffer on 10/28/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit

class MealSelectorTable: UIViewController {

    var meals: [Meal] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        meals = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Meal]{
        var tempMeals: [Meal] = []
        
        let meal1 = Meal(image: #imageLiteral(resourceName: "fire"), title: "Meal 1")
        let meal2 = Meal(image: #imageLiteral(resourceName: "fire"), title: "Meal 1")
        let meal3 = Meal(image: #imageLiteral(resourceName: "fire"), title: "Meal 1")
        let meal4 = Meal(image: #imageLiteral(resourceName: "fire"), title: "Meal 1")
        let meal5 = Meal(image: #imageLiteral(resourceName: "fire"), title: "Meal 1")
        let meal6 = Meal(image: #imageLiteral(resourceName: "fire"), title: "Meal 1")
        
        tempMeals.append(meal1)
        tempMeals.append(meal2)
        tempMeals.append(meal3)
        tempMeals.append(meal4)
        tempMeals.append(meal5)
        tempMeals.append(meal6)
        
        return tempMeals
    }


}

extension MealSelectorTable: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let meal = meals[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell") as! MealCell
        
        cell.setMeal(meal: meal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
}
