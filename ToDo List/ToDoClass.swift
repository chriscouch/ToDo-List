//
//  ToDoClass.swift
//  ToDo List
//
//  Created by Christopher Couch on 6/1/18.
//  Copyright © 2018 Christopher Couch. All rights reserved.
//

import UIKit

class ToDo {
    var name : String
    var important : Bool
    
    init (_ name: String = "", _ important: Bool = false){
        self.name = name
        self.important = important
    }
    
}
