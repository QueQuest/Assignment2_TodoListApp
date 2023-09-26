//
//  TodoItems.swift
//  Assignment2_TodoListApp
//
//  Created by Abdulaziz Albahar on 2/27/23.
//

import Foundation

class TodoItems: ObservableObject {
    
    /*
     TODO (variables [min. 1] + initializer)
     Hint: The purpose of this class is to store a collection of TodoItem objects representing the added items. Do you know why? (has to do with each todo item's state)
     */
    var todoList: [TodoItem]
    
    init () {
        todoList = []
    }
    /*
     TODO (functions [min. 1])
     */
    func addItem(description: String) {
        todoList.append(TodoItem(description: description))
    }
    
    
    
}
