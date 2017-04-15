//
//  UserPostsTableViewController.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 15.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class UserPostsTableViewController: UITableViewController {
    
    var selectedUser:User!
    var userPosts:[UserPost] = [UserPost]()
    
    @IBOutlet var tblPost: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "\(selectedUser.id)'s Posts"
        
        Alamofire.request("https://jsonplaceholder.typicode.com/posts?userId=\(selectedUser.id)").responseJSON { response in
            
            switch response.result {
                
            case .success:
                let json = JSON(response.result.value!)
                
                for post in json.arrayObject! {
                    let postDictionary = post as! [String:AnyObject] //
                    
                    self.userPosts.append(
                        UserPost(userId: postDictionary["userId"] as! Int,                                              id: postDictionary["id"] as! Int,
                             title: postDictionary["title"] as! String,
                             body: postDictionary["body"] as! String))
                }
                
                self.tblPost.reloadData()
                
            case .failure:
                print("Failure!..")
            }
        }

        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userPosts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblPost.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        
        let post = userPosts[indexPath.row]
        
        cell.textLabel?.text = post.title
        cell.detailTextLabel?.text = post.body
        return cell
    }

    
}
