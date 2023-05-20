//
//  ContentView.swift
//  ToDo
//
//  Created by Julia Bub on 5/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
                Spacer()
            }
            .padding()
            Spacer()
            List{
                ForEach(toDoItems) {toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }
            .listStyle(.plain)
        }
    if showNewTask {
        NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
    private func addTask(title: String, isImportant: Bool = false){
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    

