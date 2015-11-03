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
    var completed: String = "" // = false
    var creationDate: NSDate!// = NSDate()
    
//    var _completed:String {
//        return completed
//    }
//    var _createDate:String {
//        return creationDate
//    }
    
    init(name: String, complete:String, createDate:NSDate){
        self.itemName = name
        self.completed = complete
        self.creationDate = createDate
        
    }

}
