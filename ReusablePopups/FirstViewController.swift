//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Kawthar Khalid al-Tamimi on 9/8/19.
//  Copyright © 2019 Kawthar Khalid al-Tamimi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }
//
//    @objc func handlePopUpClosing(notification: Notification){
//        let dateVc = notification.object as! DatePopupViewController
//        dateLabel.text = dateVc.formattedDate
//
//    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //beacuse there are 2 vc listenting to the same radio station we have to add the observer in view did appear so every controller have it's own
        
        // also to prevent memory leak and create an observer each time the view appear we have to remove the observer when the view disappear so to remove it we need also a refrence to observer that we have created
        
        // old way for notification
        // NotificationCenter.default.addObserver(self, selector: #selector(handlePopUpClosing), name: .saveDateTime, object: nil)
        
        // new way
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVc = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVc.formattedDate
        }
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let observer = self.observer {
            NotificationCenter.default.removeObserver(observer)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDataePopupViewControllerSegue" {
            //cast the destenation to the type of vc that I want to referenec
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            
        }
    }

}

