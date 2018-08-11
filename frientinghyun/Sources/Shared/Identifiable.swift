//
//  Identifiable.swift
//  frientinghyun
//
//  Created by 이의현 on 2018. 8. 11..
//  Copyright © 2018년 이의현. All rights reserved.
//

import Foundation

import Foundation

protocol Identifiable {
    var entryID: UUID { get } // UUID 사용
}

extension Identifiable {
    func isIdentical(to other: Self) -> Bool {
        return entryID == other.entryID
    }
}
