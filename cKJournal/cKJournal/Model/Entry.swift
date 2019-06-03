//
//  Entry.swift
//  cKJournal
//
//  Created by Austin West on 6/3/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class Entry {
    
    var timestamp: Date
    var title: String
    var bodyText: String
    
    init(title: String, bodyText: String, timestamp: Date = Date()) {
        
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
        
    }
    
    
}

extension Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.timestamp == rhs.timestamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
    }
}
