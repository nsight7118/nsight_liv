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
    
    var item = DiscussionViewModelEmailItem(email:"Eureka");
    
    //@IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        viewModel.items.append(item);
        
        super.viewDidLoad()
        
        //tableView.dataSource = self;
        
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "email")
        
        //tableView?.dataSource = viewModel as? UITableViewDataSource
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
     indexPath: IndexPath) -> UITableViewCell {
     //let item = items[indexPath.section]
     //switch item.type {
     //case .email:
     let cell = tableView.dequeueReusableCell(withIdentifier: "email") as! EmailCell
        cell.email = "Eureka"
        return cell
     
     }
    
}
