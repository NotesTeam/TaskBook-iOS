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
    var content: String
    var date: Double
    var isArchived: Bool
    
    init?(id: Int, title: String, content: String, date: Double) {
        
        guard !title.isEmpty && !content.isEmpty else {
            return nil
        }
        
        self.id = id
        self.title = title
        self.content = content
        self.date = date
        self.isArchived = false
    }
    
    
    
    
    
}
