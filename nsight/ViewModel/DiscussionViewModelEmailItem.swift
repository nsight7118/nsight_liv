//
//  DiscussionViewModelEmailItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class DiscussionViewModelEmailItem: DiscussionViewModelItem
{
    var type: DiscussionViewModelItemType {
        return .profile_email
    }
    
    var sectionTitile: String {
        return "Email"
    }
    
    var email: String
    
    init(email: String) {
        self.email = email
    }
    
}
