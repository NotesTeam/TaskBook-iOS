//
//  NoteTests.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 21.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import XCTest
@testable import TaskBook

class NoteTests: XCTestCase {
    
    private let testTitle = "Test title"
    private let testText = "Some text inside note"
    private let testDate = 1487692550.0
    
    func testNoteInitzializationSucceeds() {
        
        let correctNote = Note.init(id: 0, title: testTitle, text: testText, date: testDate)
        XCTAssertNotNil(correctNote)
        
    }
    
    func testNoteInitzializationFails() {
        
        let noteWithoutTitle = Note.init(id: 0, title: "", text: testText, date: testDate)
        XCTAssertNil(noteWithoutTitle)
        
        let noteWithoutText = Note.init(id: 0, title: testTitle, text: "", date: testDate)
        XCTAssertNil(noteWithoutText)
        
        let noteWithoutTitleAndText = Note.init(id: 0, title: "", text: "", date: testDate)
        XCTAssertNil(noteWithoutTitleAndText)
        
    }
    
}
