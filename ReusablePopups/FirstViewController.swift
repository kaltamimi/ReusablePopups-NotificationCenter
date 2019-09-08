//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Kawthar Khalid al-Tamimi on 9/8/19.
//  Copyright © 2019 Kawthar Khalid al-Tamimi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDataePopupViewControllerSegue" {
            //cast the destenation to the type of vc that I want to referenec
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            
        }
    }

}

