//
//  UserPost.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 14.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import Foundation
//To Get Posts by UserID
//..../posts?userId=1

class UserPost{
    var userId:Int
    var id:Int
    var title:String
    var body:String
    
    init(userId:Int, id:Int, title:String, body:String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
