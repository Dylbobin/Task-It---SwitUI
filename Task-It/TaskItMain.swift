//
//  TaskItMain.swift
//  Task-It
//
//
//

import SwiftUI

@main
struct SwiftUITodoApp: App {
    
    @StateObject var todoListViewModel : TodoListViewModel = TodoListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TodoListView()
            }.environmentObject(todoListViewModel)
        }
    }
}
