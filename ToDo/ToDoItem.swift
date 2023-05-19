//
//  ToDoItem.swift
//  ToDo
//
//  Created by Julia Bub on 5/19/23.
//

import Foundation

class ToDoItem{
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false){
        self.title = title
        self.isImportant = isImportant
    }
}
