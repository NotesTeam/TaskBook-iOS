//
//  InfoBarController.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 17.03.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import UIKit

class InfoBarController : UIViewController {
    
    
    @IBOutlet weak var dayNumber: UILabel!
    @IBOutlet weak var monthName: UILabel!
    
    private var infoBarLogic = InfoBarLogic()
    
    override func viewDidLoad(){
        dayNumber.text = infoBarLogic.currentDayNumber
        monthName.text = infoBarLogic.currentMonthName
    }
    
}

