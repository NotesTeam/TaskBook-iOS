//
//  NewNoteController.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 25.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import UIKit
import os.log


class NewNoteController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    var note: Note?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        titleTextField.delegate = self
        
        // Enable the Save button only if the text field has a valid Meal name.
        updateSaveButtonState()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //Disable the Save button while editing
        saveButton.isEnabled = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateSaveButtonState()
        navigationItem.title = textField.text
    }
    
    private func updateSaveButtonState() {
        //Dsiable the Save button if the text field is empty
        let text = titleTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    
    
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
