//
//  Comment.swift
//  ReadingJSONService
//
//  Created by mslab on 16.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import Foundation

class Comment{
    var postId:Int
    var id:Int
    var name:String
    var email:String
    var body:String
    
    init(postId:Int, id:Int, name:String, email:String, body:String) {
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}
