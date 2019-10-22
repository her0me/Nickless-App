//
//  ViewController.swift
//  Wasted
//
//  Created by Drew Scheffer on 9/10/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
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
    
    var priorityTypes = ["low", "medium", "high"]
    
    @IBOutlet weak var textField: UITextField!
    
    
    func createPickerView(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textField.inputView = pickerView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView
    }


}

