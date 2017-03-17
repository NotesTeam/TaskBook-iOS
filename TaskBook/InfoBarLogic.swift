//
//  InfoBarLogic.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 17.03.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import Foundation


class InfoBarLogic {
    
    private let date = Date()
    private let dateFormatter = DateFormatter()
    
    var currentDayNumber: String {
        get {
            dateFormatter.dateFormat="d"
            return dateFormatter.string(from: date)
        }
    }
    
    var currentMonthName: String {
        get {
            dateFormatter.dateFormat="MMMM"
            return dateFormatter.string(from: date).uppercased()
        }
    }
    
}
