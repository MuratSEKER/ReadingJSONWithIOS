//
//  User.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 13.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import Foundation
class User{
    var id:Int
    var name:String
    var username:String
    var email:String
    
    var address: Address
    var company: Company
    
    
    
    
    init(id:Int, name:String, username:String, email:String, address:Address, company:Company) {
        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.address = address
        self.company = company
    }
    
}
