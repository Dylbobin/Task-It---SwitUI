//
//  TodoListView.swift
//  Task-It
//
//
//

import SwiftUI

struct TodoListView: View {
    
    @EnvironmentObject var todoListViewModel: TodoListViewModel
    
    var body: some View {
        ZStack {
            if todoListViewModel.todos.isEmpty {
                NoItemView()
            } else {
                List {
                    ForEach(todoListViewModel.todos) { todo in
                        VStack(alignment: .leading) {
                            Text(todo.date.formatted(date: .numeric, time: .omitted))
                                .font(.system(size: 12))
                                .padding(.top)
                            ListRowView(todo: todo)
                                .onTapGesture {
                                    withAnimation(.linear) {
                                        todoListViewModel.updateTodo(todo: todo)
                                    }
                                }
                        }
                    }
                    .onDelete(perform: todoListViewModel.deleteTodo)
                    .onMove(perform: todoListViewModel.moveTodo)
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationTitle("Task-It📍")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "Add",
                destination: AddTodoView()
            )
        )
        
    }
}

#Preview {
    NavigationView{
        TodoListView()
    }
    .environmentObject(TodoListViewModel())
}

