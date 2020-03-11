//
//  CalendarViewController.swift
//  Wasted
//
//  Created by Corbin Fleming-Dittenber on 10/29/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate, UIGestureRecognizerDelegate {
    var mealImage: MealC!
    var meals: [MealC] = []
  //  @IBOutlet var viewThing: UIView!
    
   // @IBOutlet weak var calenderView: FSCalendar!
    //@IBOutlet weak var tableView1: UITableView! //Calendar View
    @IBOutlet weak var tableView2: UITableView!
    //@IBOutlet weak var animationSwitch: UISwitch!
    //@IBOutlet weak var image: UIImageView!
    //@IBOutlet weak var TitleLabel: UILabel!
    
    fileprivate weak var calendar: FSCalendar!
    
    override func loadView() {
        super.loadView()
        // In loadView or viewDidLoad
        let calendar = FSCalendar(frame: .zero)//CGRect(x: 50, y: 50, width: 320, height: 300))
        calendar.translatesAutoresizingMaskIntoConstraints = false
        
        calendar.dataSource = self
        calendar.delegate = self
        self.view.addSubview(calendar)
        
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64*2),
            calendar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
            calendar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
            calendar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -64*5),
        ])
        
        self.calendar = calendar
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        meals = createArray()
        tableView2.delegate = self
        tableView2.dataSource = self
        //image.image = mealImage.image
        //TitleLabel.text = mealImage.title
    }
    
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      //  return [2,1][section]
    //}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func createArray() -> [MealC]{
        var tempMeals: [MealC] = []
        
        let meal1 = MealC(image: #imageLiteral(resourceName: "bagelpizza"), title: "Bagel Pizza")
        let meal2 = MealC(image: #imageLiteral(resourceName: "pbj"), title: "Peanut Butter and Jelly")
        let meal3 = MealC(image: #imageLiteral(resourceName: "chick"), title: "Hawaiian Chicken")
        let meal4 = MealC(image: #imageLiteral(resourceName: "hamsam"), title: "Ham Sandwich")
        let meal5 = MealC(image: #imageLiteral(resourceName: "chicknood"), title: "Chicken Noodle Soup")
        let meal6 = MealC(image: #imageLiteral(resourceName: "tuna"), title: "Tuna Casserole")
        
        tempMeals.append(meal1)
        tempMeals.append(meal2)
        tempMeals.append(meal3)
        tempMeals.append(meal4)
        tempMeals.append(meal5)
        tempMeals.append(meal6)
        
        return tempMeals
    }

}

extension CalendarViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let meal = meals[indexPath.row]
        let cell = tableView2.dequeueReusableCell(withIdentifier: "CalenderCell") as! CalendarCell
        cell.set(meal: meal)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let meal = meals[indexPath.row]
        performSegue(withIdentifier: "select", sender: meal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
}
