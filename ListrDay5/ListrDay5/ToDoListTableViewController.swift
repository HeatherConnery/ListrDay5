//
//  ToDoListTableViewController.swift
//  ListrDay5
//
//  Created by Heather Connery on 2015-10-30.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    
    var toDoItems: NSMutableArray = []
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        
    }
    
    
    func loadInitialData(){
        var item1 = ToDoItem(name: "Buy milk")
        self.toDoItems.addObject(item1)
        var item2 = ToDoItem(name: "Buy eggs")
        self.toDoItems.addObject(item2)
        var item3 = ToDoItem(name: "Read a book")
        self.toDoItems.addObject(item3)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadInitialData()
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
    
//    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
//        
//        let CellIndentifier: NSString = "ListPrototypeCell"
//        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier) as UITableViewCell
//        var todoitem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as ToDoItemcell.textLabel.text = todoitem.itemName
//        
//        return cell
//    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIndentifier = "ListPrototypeCell"
        var cell = UITableViewCell()
        if let tempcell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier) {
            var todoitem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
            cell.textLabel?.text = todoitem.itemName
        
        return cell
        }

    }
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
