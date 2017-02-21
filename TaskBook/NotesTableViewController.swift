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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleNotes()
        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    private func generateReadableDate(timestamp: Double) -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat="EEEE dd MMM YYYY"
        return dateFormatter.string(from: date)
    }
    
    private func loadSampleNotes() {
        guard let note1 = Note(id: 0, title: "Test", content: "TestTest", date: 1487692550) else {
            fatalError("Unable to initzialize note1")
        }
        guard let note2 = Note(id: 0, title: "Test2", content: "TestTest", date: 1487692550) else {
            fatalError("Unable to initzialize note2")
        }
        notes += [note1, note2]
    }

}
