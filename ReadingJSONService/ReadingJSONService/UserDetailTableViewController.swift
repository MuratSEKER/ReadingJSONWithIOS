//
//  UserDetailTableViewController.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 15.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import UIKit

class UserDetailTableViewController: UITableViewController, UserDetailTableViewCellDelegate {
    
    var selectedUser:User!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func getUserPosts(indexPath: IndexPath) {
        //post butonuna userId yi alıp /posts?userId=\(user.userId) şeklinde gönderi yapılacak. xib leriyle sonra uğraşırız artık. ee önümüz referandum.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserDetailTableViewCell
        
        cell.lblUserName.text = selectedUser.name
        cell.lblUserId.text = String(selectedUser.id)
        cell.lblUserMail.text = selectedUser.email
        cell.lblCity.text = selectedUser.address.city
        cell.lblCompany.text = selectedUser.company.name
        
        return cell
    }
    
}
