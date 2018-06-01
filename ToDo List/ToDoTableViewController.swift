//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Christopher Couch on 6/1/18.
//  Copyright © 2018 Christopher Couch. All rights reserved.
//

import UIKit

var toDos : [ToDo] = []

class ToDoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        let eggs = ToDo("Buy eggs", true)
        let cheese = ToDo("Buy cheese")
        let read = ToDo("Read book")
    
        return[eggs, cheese, read]
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        cell.textLabel?.text = "\(toDo.name) \(toDo.important ? "❗️" : "")"

        return cell
    }



/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
*/

}
