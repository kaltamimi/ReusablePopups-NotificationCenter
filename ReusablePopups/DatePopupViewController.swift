//
//  DatePopupViewController.swift
//  ReusablePopups
//
//  Created by Kawthar Khalid al-Tamimi on 9/8/19.
//  Copyright © 2019 Kawthar Khalid al-Tamimi. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    var showTimePicker: Bool = false
    
    /* 2 type of properties:
     1) Stored Property: "a constant or variable  that is stored as part of an instance of a particular class or structure"
     2) Computed Property: "does not actually store a value"
    */
    
    //Computed Property
    var formattedDate: String{
        //2 way valued with get or without
     //   get {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: datePicker.date)
       // }
    }
    
    var formattedTime: String{
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if showTimePicker {
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
        }
    }
    
    
    @IBAction func saveDate_TouchUpInside(_ sender: Any) {
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        dismiss(animated: true)
    }
    //commit for testing 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
