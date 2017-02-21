//
//  Note.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 21.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import Foundation

class Note {
    
    var id: Int
    var title: String
    var text: String
    var date: Double
    var isArchived: Bool
    
    init?(id: Int, title: String, text: String, date: Double) {
        
        guard !title.isEmpty && !text.isEmpty else {
            return nil
        }
        
        self.id = id
        self.title = title
        self.text = text
        self.date = date
        self.isArchived = false
    }
    
    
    
    
    
}
