//
//  ToDoListTableViewController.swift
//  ListrDay5
//
//  Created by Heather Connery on 2015-10-30.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

/*
Our ToDoListTableViewController is a custom subclass of UITAbleViewController
UITAbleViewController automatically creates a UITAbleView object that you access through the tableView property
If no nib files are created, it sets datasource and delegate of the tableView to self?
*/
class ToDoListTableViewController: UITableViewController {
    
    var toDoItems: NSMutableArray = []
    var currentIndex: Int = 0
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        if let source: ViewController = segue.sourceViewController as? ViewController, item: ToDoItem = source.toDoItem {
            self.toDoItems.addObject(item)
            self.tableView.reloadData()
        }
        
    }
    
    
//    func loadInitialData(){
//        var item1 = ToDoItem(name: "Buy milk")
//        self.toDoItems.addObject(item1)
//        var item2 = ToDoItem(name: "Buy eggs")
//        self.toDoItems.addObject(item2)
//        var item3 = ToDoItem(name: "Read a book")
//        self.toDoItems.addObject(item3)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loadInitialData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.toDoItems.count
    }
    



    
    //asks the datasource for a cell to insert at a particular row index within the table view
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //create local var to reference the prototype cell's identifier (set in main)
        let CellIdentifier = "ListPrototypeCell"
        //create local var that is an instance of UITableviewCell class (generic cell object)
        var cell = UITableViewCell()
        
        /*dequeueReusableCellWithIdentifier is a func in class UITableView, tableView (the obj) is an instance of UITableView, so it has access to it
        //        it returns an obj of type UITableViewCell?
        //        */
        //the dequeue func returns a reusable cell located by the specified identifier
        if let tempCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier), todoitem = self.toDoItems.objectAtIndex(indexPath.row) as? ToDoItem {
            //if I get a UITableViewCell back from that identifier
            //            //create an instance of the class ToDoItem and set it to the array item with array index = to the indexPath.row. We force unwrap this array item as type ToDoItem (our class)
            
            //set the temp cell's text property of the textLabel to todoitem's itemName property value
            tempCell.textLabel?.text = String(todoitem.itemName)
            
            //This code toggles check marks in list view of to-do items
//            if todoitem.completed {
//                tempCell.accessoryType = .Checkmark
//            } else{
//                tempCell.accessoryType = .None
//            }
            
            cell = tempCell
        }
        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {tableView.deselectRowAtIndexPath(indexPath, animated: false)
//        var tappedItem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
//        tappedItem.completed = !tappedItem.completed
//        tableView.reloadData()
      currentIndex = indexPath.row
    
         
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
            
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         //Get the new view controller using segue.destinationViewController.
         //Pass the selected object to the new view controller.
        if segue.identifier == "detailView" {
           if let detailViewController = segue.destinationViewController as? DetailViewController {
//                detailViewController.itemNameString = "Name of item"
//                detailViewController.creationDateString = "01/01/01"
//                detailViewController.completedStatusString = "Not completed"
            
                detailViewController.itemNameString = toDoItems.objectAtIndex(currentIndex).itemName
                //detailViewController.creationDateString = toDoItems.objectAtIndex(currentIndex).creationDate
                //detailViewController.completedStatusString = toDoItems.objectAtIndex(currentIndex).completed
            }

        }
    }

    
    
    
}
