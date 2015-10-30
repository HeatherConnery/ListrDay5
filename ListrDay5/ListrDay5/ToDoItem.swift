//
//  ToDoItem.swift
//  ListrDay5
//
//  Created by Heather Connery on 2015-10-30.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name: String){
        self.itemName = name
    }

}
