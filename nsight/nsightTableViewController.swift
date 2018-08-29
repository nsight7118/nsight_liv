//
//  nsightTableViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/20/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class nsightTableViewController: UITableViewController {
    
    var viewModel = DiscussionViewModel()
    
    var com = [Comment]()
    
    
    
    var item1 = DiscussionViewModelEmailItem(email:"Eureka");
    var item2 = DiscussionVIewModelTitleItem()
    
    var sectionRows:[Int:Int] = [DiscussionViewModelItemType.title.rawValue:1,DiscussionViewModelItemType.profile_email.rawValue:1,
         DiscussionViewModelItemType.about.rawValue:1,
         DiscussionViewModelItemType.comments.rawValue:2,
         DiscussionViewModelItemType.discussionAttributes.rawValue:1]
    
    override func viewDidLoad() {
        
        
        
        com.append(Comment(id:0,content:"Hi"))
        com.append(Comment(id:1,content:"Hey"))
        
        let item3 = DiscussionViewModelCommentsItem(comments: com)
        
        viewModel.items.append(item1);
        viewModel.items.append(item2);
        viewModel.items.append(item3);
        viewModel.items.append(item2);
        viewModel.items.append(item2);
        viewModel.items.append(item2);
        
        super.viewDidLoad()
        
        //tableView.dataSource = self;
        
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "email")
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "title")
        //tableView?.dataSource = viewModel as? UITableViewDataSource
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Int(DiscussionViewModelItemType.discussionAttributes.rawValue+1)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionRows[section]!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
     indexPath: IndexPath) -> UITableViewCell {
     let item = viewModel.items[indexPath.section]
     switch item.type {
     case DiscussionViewModelItemType.profile_email:
     let cell = tableView.dequeueReusableCell(withIdentifier: "email") as! EmailCell
        cell.email = "Eureka"
        return cell
     case DiscussionViewModelItemType.about:
        let cell = tableView.dequeueReusableCell(withIdentifier: "email") as! EmailCell
        cell.email = "About"
        return cell
     case DiscussionViewModelItemType.title:
        let cell = tableView.dequeueReusableCell(withIdentifier: "email") as! EmailCell
        cell.email = "Title"
        return cell
     case DiscussionViewModelItemType.comments:
        let cell = tableView.dequeueReusableCell(withIdentifier: "email") as! EmailCell
        cell.email = "Comments"
        return cell
     case DiscussionViewModelItemType.discussionAttributes:
        let cell = tableView.dequeueReusableCell(withIdentifier: "email") as! EmailCell
        cell.email = "Atttribs"
        return cell
        }
     }
    
}
