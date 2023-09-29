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
    @StateObject var todoList = TodoItems();
    @State var description: String = "";
    
    var items = ["1", "2", "3", "4"]
    var body: some View {
        VStack(spacing: 30) {
            TextFieldCopy(description: description)
            
            TextField(
                "Todo Description",
                text: $description
            )
            // this part should be inside todoItemScreen
            VStack(spacing: 5){
                ForEach(todoList.todoList, id: \.description) { item in
                    HStack{
                        Text(item.description).foregroundColor( item.completed ? Color.green : Color.black)
                        Button(action: {
                            item.toggleCompleted();
                        },label:{
                            Text("Mark done");
                        })
                        Button(action: {
                            print("go to edit screen")
                        },label:{
                            Text("Edit");
                        })
                    }
                    
                }
            }
            // end of part that should be inside todoItemScreen
            Button(action: {
                if description.count > 0 {
                    todoList.addItem(description: description);
                }
                description = "";
            },label:{
                Text("Add")
            })
        }
    }
    
}

struct TextFieldCopy: View {
    
    var description: String
    
    var body: some View {
        
        Text(description)
        
    }
    
}
/*
struct EditTaskScreen: View {
    
    
    var body: some View {
        TextField("Edit this", $description)
    }
    
}
*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
