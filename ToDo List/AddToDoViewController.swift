//
//  ToDoViewCOntroller.swift
//  ToDo List
//
//  Created by Christopher Couch on 6/1/18.
//  Copyright © 2018 Christopher Couch. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var addToDoTextField: UITextField!
    @IBOutlet weak var addToDoImportantFlag: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo(addToDoTextField.text!, addToDoImportantFlag.isOn)
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
        
    }

}
