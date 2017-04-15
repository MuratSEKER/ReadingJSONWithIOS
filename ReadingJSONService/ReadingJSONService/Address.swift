//
//  Address.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 13.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import Foundation
class Address {
    var street:String
    var suite:String
    var city:String
    
    init(street:String = "", suite:String = "", city:String = "") {
        self.street = street
        self.suite = suite
        self.city = city
    }
}
