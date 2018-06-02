//
//  CompleteToDoViewController.swift
//  ToDo List
//
//  Created by Christopher Couch on 6/1/18.
//  Copyright © 2018 Christopher Couch. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()

    @IBOutlet weak var completeToDo: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
      completeToDo.text = selectedToDo.name

    
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        var i = 0
        previousVC.toDos.forEach { toDo in
           
            if toDo.name == selectedToDo.name {
                
                previousVC.toDos.remove(at: i)
                previousVC.tableView.reloadData()
                
                navigationController?.popViewController(animated: true)
            }
            i += 1
        }
    }

}
