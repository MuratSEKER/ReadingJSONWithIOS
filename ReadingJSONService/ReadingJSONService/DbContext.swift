//
//  DbContext.swift
//  ReadingJSONService
//
//  Created by mslab on 14.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//


import Foundation
import Alamofire
import SwiftyJSON
class DbContext{
    
    static var userList:[User] = [User]()

    
//    static func getUsers() -> [User] {
//        
//        let userAddress = Address()
//        let userCompany = Company()
//        
//        Alamofire.request("https://jsonplaceholder.typicode.com/users").responseJSON { response in
//            
//            switch response.result {
//                
//            case .success:
//                let json = JSON(response.result.value!)
//                
//                for user in json.arrayObject! {
//                    let userDictionary = user as! [String:AnyObject] // birden fazla tür olduğundan keyleri string değerleri anyobject seçecek
//                    
//                    let incomingCompany = userDictionary["company"] as! [String:AnyObject] // yine bir dictionary yapısı var
//                    
//                    let incomingAddress = userDictionary["address"] as! [String:AnyObject]
//                    
//                    userAddress.city = incomingAddress["city"] as! String
//                    userAddress.street = incomingAddress["street"] as! String
//                    userAddress.suite = incomingAddress["suite"] as! String
//                    
//                    
//                    userCompany.name = incomingCompany["name"] as! String
//                    userCompany.bs = incomingCompany["bs"] as! String
//                    userCompany.catchPhrase = incomingCompany["catchPhrase"] as! String
//                    
//                    self.userList.append(
//                        User(id: userDictionary["id"] as! Int,                                              name: userDictionary["name"] as! String,
//                             username: userDictionary["username"] as! String,
//                             email: userDictionary["email"] as! String,
//                             address:userAddress,
//                             company:userCompany))
//                }
//
//                //self.tblUsers.reloadData()
//            case .failure:
//                print("Failure!..")
//            }
//        }
//        return userList
//    }
}
