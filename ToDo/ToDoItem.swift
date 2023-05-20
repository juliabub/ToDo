//
//  ToDoItem.swift
//  ToDo
//
//  Created by Julia Bub on 5/19/23.
//

import Foundation

class ToDoItem: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = true
    
    init(title: String, isImportant: Bool = false){
        self.title = title
        self.isImportant = isImportant
    }
}
