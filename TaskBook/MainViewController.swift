//
//  ViewController.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 19.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

//    @IBOutlet private weak var dayNumberLabel: UILabel!
//    @IBOutlet private weak var weekdayLabel: UILabel!
    
    private var model = MainModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "MainBackground")!)
        
//        dayNumberLabel.text = model.currentDayNumber
//        weekdayLabel.text = model.currentMonthName
        
    }

}

