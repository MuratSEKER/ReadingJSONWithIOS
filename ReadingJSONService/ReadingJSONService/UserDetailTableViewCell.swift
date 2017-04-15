//
//  UserDetailTableViewCell.swift
//  ReadingJSONService
//
//  Created by Murat SEKER on 15.04.2017.
//  Copyright © 2017 mslab. All rights reserved.
//

import UIKit


protocol UserDetailTableViewCellDelegate{
    func getUserPosts(indexPath:IndexPath)
}
class UserDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblUserId: UILabel!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblUserMail: UILabel!
    @IBOutlet weak var lblCompany: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    var delegate:UserDetailTableViewCellDelegate?
    
    var indexPath:IndexPath?
    
    
    @IBAction func btnPostsPressed() {
        delegate?.getUserPosts(indexPath: self.indexPath!)
    }
    
}
