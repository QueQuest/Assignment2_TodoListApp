//
//  ContentView.swift
//  Assignment2_TodoListApp
//
//  Created by Abdulaziz Albahar on 2/27/23.
//

import SwiftUI

struct TodoListScreen: View {
    
    /*
     TODO (variables [min. 2])
     */
    @StateObject var todoList = TodoItems()
    @State var description: String = ""
    var body: some View {
        Text("Implement here!")
        TextField(
            "Todo Description",
            text: $description
        )
        Button(action: {
            todoList.addItem(description: description);
            print(todoList.todoList)
        },label:{
            Text("add")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
