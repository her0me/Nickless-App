//
//  quizViewController.swift
//  Wasted
//
//  Created by Drew Scheffer on 10/23/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit

class quizViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate  {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return priorityTypes.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return priorityTypes[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectPrioriy = priorityTypes[row]
        textField.text = selectPrioriy
    }

    var selectPrioriy : String?
    
    var priorityTypes = ["1", "2", "3", "4"]
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    
    @IBOutlet weak var smallBtn: UIButton!
    @IBOutlet weak var regBtn: UIButton!
    @IBOutlet weak var largeBtn: UIButton!
    
    @IBOutlet weak var kosherBtn: UIButton!
    
    
    @IBOutlet weak var aidBtn: UIButton!
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func onClickBtn1(_ sender: Any) {
        if btn2.isSelected{
            btn2.isSelected = !btn2.isSelected
        }
        btn1.isSelected = !btn1.isSelected
    }
    
    @IBAction func onClickBtn2(_ sender: Any) {
        if btn1.isSelected{
            btn1.isSelected = !btn1.isSelected
        }
        btn2.isSelected = !btn2.isSelected
    }
    
    @IBAction func onClickSmalBtn(_ sender: Any) {
        if regBtn.isSelected{
            regBtn.isSelected = !regBtn.isSelected
        }
        if largeBtn.isSelected{
            largeBtn.isSelected = !largeBtn.isSelected
        }
        smallBtn.isSelected = !smallBtn.isSelected
    }
    @IBAction func onClickRegBtn(_ sender: Any) {
        if smallBtn.isSelected{
            smallBtn.isSelected = !smallBtn.isSelected
        }
        if largeBtn.isSelected{
            largeBtn.isSelected = !largeBtn.isSelected
        }
        regBtn.isSelected = !regBtn.isSelected
    }
    @IBAction func onClickLargeBtn(_ sender: Any) {
        if smallBtn.isSelected{
            smallBtn.isSelected = !smallBtn.isSelected
        }
        if regBtn.isSelected{
            regBtn.isSelected = !regBtn.isSelected
        }
       
        largeBtn.isSelected = !largeBtn.isSelected
    }
    
    @IBAction func onClickKosherBtn(_ sender: Any) {
        kosherBtn.isSelected = !kosherBtn.isSelected
    }
    
    
    @IBAction func onClickstuff(_ sender: Any) {
        aidBtn.isSelected = !aidBtn.isSelected

    }
    
    
    
    
    
    func createPickerView(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textField.inputView = pickerView
    }
    
    func dismissPickerView(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action:
            #selector(self.dismissKeyboard))
        toolbar.setItems([doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        
        textField.inputAccessoryView = toolbar
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()

        // Do any additional setup after loading the view.
    }

}
