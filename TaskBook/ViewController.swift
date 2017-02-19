//
//  ViewController.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 19.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayNumberLabel: UILabel!
    @IBOutlet weak var weekdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "MainBackground")!)
        
        let date = Date()
//        let calendar = NSCalendar.current
//        let day = calendar.component(.day, from: date as Date)
//        let weekday = calendar.component(.weekday,from: date as Date)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat="EEEE"
        let weekdayString = dateFormatter.string(from: date)
        weekdayLabel.text = weekdayString
        
        dateFormatter.dateFormat="d"
        let dayString = dateFormatter.string(from: date)
        dayNumberLabel.text = dayString
//        dayNumberLabel.text = String(day)
        
    }

}

