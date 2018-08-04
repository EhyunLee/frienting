//
//  Entry.swift
//  frientinghyun
//
//  Created by 이의현 on 2018. 8. 4..
//  Copyright © 2018년 이의현. All rights reserved.
//

import Foundation

class Entry {
    let writer_uid: String
    let applicant_uid: String
    let nickname: String
    
    let title: String
    let activity: String
    
    let meetingDate: Date
    let meetingTime: Timer
    let byeTime: Timer
    
    let hashTag: String
    let createdAt: Date
    var text: String
    
    let recruitment_key: String
    let numberDetail: Int
    let ageDetail: Int
    
    let isFinished: Bool
    
    init(id: Int, createdAt: Date, text: String) {
       
    }
}
