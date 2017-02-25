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
    var date: Date
    var isArchived: Bool
    
    init?(title: String, content: String, date: Date) {
        
        guard !title.isEmpty else {
            return nil
        }
        
        self.id = 0
        self.title = title
        self.content = content
        self.date = date
        self.isArchived = false
        self.id = self.hash(title: title, content: content, date: date)
    }
    
    public func hash(title: String, content: String, date: Date) -> Int {
        return (title+content+String(describing: date)).hashValue
    }
}
