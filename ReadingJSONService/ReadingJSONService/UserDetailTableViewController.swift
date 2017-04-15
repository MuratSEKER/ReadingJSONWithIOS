//
//  UserDetailTableViewController.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 15.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import UIKit

class UserDetailTableViewController: UITableViewController {
    
    var selectedUser:User!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedUser.username
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
    
    
    
    @IBAction func btnGetPosts() {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "UserPost") as! UserPostsTableViewController

        myVC.selectedUser = selectedUser
        
        self.navigationController?.pushViewController(myVC, animated: true)
    }    
}
