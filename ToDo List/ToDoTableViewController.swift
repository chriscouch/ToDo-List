//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Christopher Couch on 6/1/18.
//  Copyright © 2018 Christopher Couch. All rights reserved.
//

import UIKit



class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo] = []

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
       
        return toDos.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        cell.textLabel?.text = "\(toDo.name) \(toDo.important ? "❗️" : "")"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDo = toDos[indexPath.row]
        performSegue(withIdentifier: "moveToComplete", sender: toDo)
        
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController{
        addVC.previousVC = self
        }
        if let completeVC = segue.destination as? CompleteToDoViewController{
           completeVC.previousVC = self
            if let toDo = sender as? ToDo {
            completeVC.selectedToDo = toDo
            }
        }
        
        
    }


}
