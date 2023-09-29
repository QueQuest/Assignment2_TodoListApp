//
//  TodoItems.swift
//  Assignment2_TodoListApp
//
//  Created by Abdulaziz Albahar on 2/27/23.
//

import Foundation
import SwiftUI
import Combine

class TodoItems: ObservableObject {
    
    /*
     TODO (variables [min. 1] + initializer)
     Hint: The purpose of this class is to store a collection of TodoItem objects representing the added items. Do you know why? (has to do with each todo item's state)
     */
    @Published var todoList: [TodoItem] {
       willSet {
            
        } didSet {
            self.bag = todoList.map { item in
                item.objectWillChange.sink(receiveValue: {
                    self.objectWillChange.send()
                })
            }
        }
    }
    var bag: [AnyCancellable?] = []
    
    init () {
        todoList = []
        
        self.bag = todoList.map { item in
            item.objectWillChange.sink(receiveValue: {
                self.objectWillChange.send()
            })
        }
        
        /*
        addItem(description: "blah blah", postAddAction: { description, row in
            print("Added item number \(row) with description: \(description).")
        })*/
    }
    /*
     TODO (functions [min. 1])
     */
    func addItem(description: String) {
        todoList.append(TodoItem(description: description))
        
    }
    
    
    
    
}
