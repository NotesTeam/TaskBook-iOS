//
//  NotesTableViewController.swift
//  TaskBook
//
//  Created by Wojciech Zieba on 21.02.2017.
//  Copyright © 2017 NotesTeam. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {
    
    var notes = [Note]()
    
    @IBAction func unwindToNoteList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? NewNoteController, let note = sourceViewController.note {
            
            // Add a new note.
            let newIndexPath = IndexPath(row: 0, section: 0)
            
            notes.insert(note, at: newIndexPath.row)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleNotes()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "NoteTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? NoteTableViewCell else {
            fatalError("The dequeued cell is not an instance of NoteTableViewCell.")
        }
        
        let note = notes[indexPath.row]
        cell.titleLabel.text = note.title
        cell.contentLabel.text = note.content
        cell.dateLabel.text = generateReadableDate(timestamp: note.date)

        return cell
    }
    
    private func generateReadableDate(timestamp: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat="EEEE dd MMM YYYY"
        return dateFormatter.string(from: timestamp)
    }
    
    private func loadSampleNotes() {
        guard let note1 = Note(title: "Test", content: "TestTest", date: Date()) else {
            fatalError("Unable to initzialize note1")
        }
        guard let note2 = Note(title: "Test2", content: "TestTest", date: Date()) else {
            fatalError("Unable to initzialize note2")
        }
        notes += [note1, note2]
    }

}
