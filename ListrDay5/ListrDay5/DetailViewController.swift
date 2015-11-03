//
//  DetailViewController.swift
//  ListrDay5
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var creationDate: UILabel!
    @IBOutlet weak var completedStatus: UILabel!
    
//    var itemNameString: NSString?
//    var creationDateString: NSDate?
//    var completedStatusString: Bool?
    
    var myObject:ToDoItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        itemName.text = myObject.itemName as String
        creationDate.text  = "\(myObject.creationDate)"
        //completedStatus.text = "\(myObject.completed)"
        completedStatus.text = myObject.completed


        // Do any additional setup after loading the view.
         
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
