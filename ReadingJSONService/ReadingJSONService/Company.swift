//
//  Company.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 13.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import Foundation
class Company{
    var name:String
    var catchPhrase:String
    var bs:String
    
    init(name:String = "", catchPhrase:String = "", bs:String = "") {
        self.name = name
        self.catchPhrase = catchPhrase
        self.bs = bs
    }
}
