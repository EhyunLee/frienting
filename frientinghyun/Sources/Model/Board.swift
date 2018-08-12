//
//  Board.swift
//  frientinghyun
//
//  Created by 이의현 on 2018. 8. 11..
//  Copyright © 2018년 이의현. All rights reserved.
//

import Foundation

protocol Board {
    var numberOfEntries: Int { get } // Board에 있는 공고 개수
    func add(_ entry: Entry)
    func update(_ entry: Entry)
    func remove(_ entry: Entry)
    func entry(with id: UUID) -> Entry?
    func recentEntries(max: Int) -> [Entry]
}

class InMemoryBoard: Board {
    
    private var entries: [UUID: Entry] // entries 빈 딕셔너리로 구현
    init(entries: [Entry] = []) {
        var result: [UUID: Entry] = [:]
        entries.forEach { entry in
            result[entry.entryID] = entry
        }
        self.entries = result
    }
    
    var numberOfEntries: Int { return entries.count }
    
    func add(_ entry: Entry) {
        entries[entry.entryID] = entry
    }
    
    func update(_ entry: Entry) {
        
    }
    
    func remove(_ entry: Entry) {
        entries[entry.entryID] = nil
    }
    
    func entry(with entryID: UUID) -> Entry? {
        return entries[entryID]
    }
    
    func recentEntries(max: Int) -> [Entry] {
        return entries
            .values
            .sorted { $0.createdAt > $1.createdAt }
    }
    
}
