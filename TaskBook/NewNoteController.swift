//
//  NewNoteController.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 25.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import UIKit
import os.log


class NewNoteController : UIViewController{
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var note: Note?
    
    
    // Configure a view controller before it's presented
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return;
        }
        
        let title = titleTextField.text ?? ""
        let content = contentTextField.text ?? ""
        
        note = Note(id: generateId(), title: title, content: content, date: getCurrentDate())
        
    }
    
    private func generateId() -> Int {
        //TODO implement
        return 0;
    }
    
    private func getCurrentDate() -> Double {
        //TODO implement
        return 0.0;
    }
    
    
}
