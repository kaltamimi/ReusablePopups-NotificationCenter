//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by Kawthar Khalid al-Tamimi on 9/8/19.
//  Copyright © 2019 Kawthar Khalid al-Tamimi. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    
    //if using a segue, use prepare for segue function to send data.
    //if using code, set data on view controller before presenting it.
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = storyboard.instantiateInitialViewController()! as! DatePopupViewController
        popup.showTimePicker = true
        self.present(popup, animated: true, completion: nil)
    }
}
