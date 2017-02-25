//
//  MainModel.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 20.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import Foundation


class MainModel{
    
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
