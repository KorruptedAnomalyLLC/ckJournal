//
//  EntryController.swift
//  cKJournal
//
//  Created by Austin West on 6/3/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class EntryController {
    
    //    singleton (shared instance)
    static let coolEntryController = EntryController()
    
    var entries: [Entry] = []
    
    func addEntryWith(title: String, bodyText: String) {
        //       Creat Entry
        let entry = Entry(title: title, bodyText: bodyText)
        
        entries.append(entry)
    }
    
    func removeEntry(entryToDelete: Entry) {
        guard let index = entries.firstIndex(of: entryToDelete)
            else { return }
        entries.remove(at: index)
    }
    
    func updateEntry(entryToUpdate: Entry, newCoolTitle: String, newCoolBodyText: String) {
        entryToUpdate.bodyText = newCoolTitle
        entryToUpdate.title = newCoolBodyText
    }
    
    
    
}


