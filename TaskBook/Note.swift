//
//  Note.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 21.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import Foundation

class Note {
    
    var title: String
    var content: String
    var date: Date
    var isArchived: Bool
    
    lazy var id: Int = {
        print("Generate id for Note object")
        return self.hash(title: self.title, content: self.content, date: self.date)
    }()
    
    init?(title: String, content: String, date: Date) {
        
        guard !title.isEmpty else {
            return nil
        }
    
        self.title = title
        self.content = content
        self.date = date
        self.isArchived = false
    }
    
    public func hash(title: String, content: String, date: Date) -> Int {
        return (title+content+String(describing: date)).hashValue
    }
}
