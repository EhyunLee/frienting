//
//  Entry.swift
//  frientinghyun
//
//  Created by 이의현 on 2018. 8. 4..
//  Copyright © 2018년 이의현. All rights reserved.
//

import Foundation

class Entry {
    // 변수 세팅
    let writerID: UUID
    let applicantID: UUID
    let entryID: UUID
    var nickname: String
    
    var title: String
    var activity: String
    
    var meetingDate: Date
    var meetingTime: Timer
    var byeTime: Timer
    
    var hashTag: String
    let createdAt: Date
    var text: String
    
    let recruitment_key: String
    var numberDetail: Int
    var ageDetail: Int
    
    let isFinished: Bool
    
    
    // 초기화
    init(
        writerID: UUID, applicantID: UUID, entryID: UUID, nickname: String, title: String, activity: String, meetingDate: Date, meetingTime: Timer, byeTime: Timer, hashTag: String, createdAt: Date, text: String, recruitment_key: String, numberDetail: Int, ageDetail: Int, isFinished: Bool
        ) {
        self.writerID = writerID
        self.applicantID = applicantID
        self.entryID = entryID
        self.nickname = nickname
        self.title = title
        self.activity = activity
        self.meetingDate = meetingDate
        self.meetingTime = meetingTime
        self.byeTime = byeTime
        self.hashTag = hashTag
        self.createdAt = createdAt
        self.text = text
        self.recruitment_key = recruitment_key
        self.numberDetail = numberDetail
        self.ageDetail = ageDetail
        self.isFinished = isFinished
    }
}

extension Entry: Identifiable { }

extension Entry: Equatable {
    static func ==(lhs: Entry, rhs: Entry) -> Bool {
        return
            lhs.writerID == rhs.writerID &&
            lhs.applicantID == rhs.applicantID &&
            lhs.entryID == rhs.entryID &&
            lhs.nickname == rhs.nickname &&
            lhs.title == rhs.title &&
            lhs.activity == rhs.activity &&
            lhs.meetingDate == rhs.meetingDate &&
            lhs.meetingTime == rhs.meetingTime &&
            lhs.byeTime == rhs.byeTime &&
            lhs.hashTag == rhs.hashTag &&
            lhs.recruitment_key == rhs.recruitment_key &&
            lhs.createdAt == rhs.createdAt &&
            lhs.text == rhs.text &&
            lhs.numberDetail == rhs.numberDetail &&
            lhs.ageDetail == rhs.ageDetail &&
            lhs.isFinished == rhs.isFinished
    }
}
