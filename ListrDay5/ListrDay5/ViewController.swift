//
//  ViewController.swift
//  ListrDay5
//
//  Created by Heather Connery on 2015-10-30.
//  Copyright © 2015 HConnery. All rights reserved.
//

//This is the AddToDoItem ViewController

import UIKit

class ViewController: UIViewController {
    
    var toDoItem: ToDoItem?

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if sender as? NSObject != self.doneButton {
            //if we hit cancel, just return
            return
        } //if we hit done:
        if self.textField.text?.utf16.count > 0 {
            //Before sequeing back to tableView, check if textField isn't empty, if so set toDoItem as instance of ToDoItem class
            //which is inititalized with whatever is in text field as it's itemName property
            self.toDoItem = ToDoItem(name: self.textField.text!, complete: "true", createDate: NSDate())
            
            //dismiss the keyboard when background is touched - NOT SEEING KEYBOARD IN SIMULATOR?
            func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
                self.view.endEditing(true)
            }
        }
    }

    
    
}

