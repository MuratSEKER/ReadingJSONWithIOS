//
//  UserTableViewController.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 14.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class UserTableViewController: UITableViewController {
    
    @IBOutlet var tblUser: UITableView!
    var allUsers:[User] = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Alamofire.request("https://jsonplaceholder.typicode.com/users").responseJSON { response in
            
            switch response.result {
                
            case .success:
                let json = JSON(response.result.value!)
                for user in json.arrayObject! {
                    let userDictionary = user as! [String:AnyObject]
                    
                    let userCompany = Company(name: userDictionary["company"]?["name"]as!String,                                              catchPhrase: userDictionary["company"]?["catchPhrase"]as!String,                                              bs: userDictionary["company"]?["bs"]as!String)
                    
                    
                    let userAddress = Address(
                        street: userDictionary["address"]?["street"]as!String,
                        suite: userDictionary["address"]?["suite"]as!String,
                        city: userDictionary["address"]?["city"]as!String)
                    
                    
                    self.allUsers.append(
                        User(id: userDictionary["id"] as! Int,                                              name: userDictionary["name"] as! String,
                             username: userDictionary["username"] as! String,
                             email: userDictionary["email"] as! String,
                             address:userAddress,
                             company:userCompany))
                }
                
                self.tblUser.reloadData()
                
            case .failure:
                print("Failure!..")
            }
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allUsers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblUser.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        
        let user = allUsers[indexPath.row]
        
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = user.username
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userDetailTableViewController = segue.destination as! UserDetailTableViewController
        
        userDetailTableViewController.selectedUser = allUsers[tableView.indexPathForSelectedRow!.row]//hangi yazar seçildiyse onu bul
        
    }
    
}
