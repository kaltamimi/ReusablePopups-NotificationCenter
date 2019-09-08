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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveDate_TouchUpInside(_ sender: Any) {
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
