//
//  TodoItem.swift
//  Assignment2_TodoListApp
//
//  Created by Abdulaziz Albahar on 2/27/23.
//

import Foundation


class TodoItem: ObservableObject  {
    
    /*
     TODO (variables [min. of 2] + variable initializer)
     */
    //let id: Int
    @Published var completed: Bool
    @Published var description: String
    
    init(description: String) {
        self.completed = false;
        self.description = description;
    }
    /*
     TODO (functions [min. of 1])
     */
    func toggleCompleted() {
        self.completed = true;
    }
    
    
}
