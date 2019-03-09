//
//  ViewController.swift
//  Day5_AppDev
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let monthArray = ["Jan","Feb","Mar","Apr","May","June","July","Aug","Sept","Oct","Nov","Dec"]
    let monthDayArray = ["31","28","30"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.monthPicker.delegate = self
        self.monthPicker.dataSource = self
    }

    @IBAction func BirthdayPicker(_ sender: UIDatePicker) {
        print(sender.date)
    }
    
    @IBOutlet weak var monthPicker: UIPickerView!
    @IBOutlet weak var lblMonthPicker: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return self.monthArray.count
        }else{
            return self.monthDayArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return self.monthArray[row]
        }else{
            return self.monthDayArray[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.lblMonthPicker.text = self.monthArray[row]
    }
}

