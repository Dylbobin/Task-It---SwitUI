//
//  AddTodoView.swift
//  Task-It
//
//
//

import SwiftUI

struct AddTodoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoListViewModel: TodoListViewModel

    @State var text: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here...", text: $text, axis: .vertical)
                    .frame(height: 55)
                    .lineLimit(3...10)
                    .padding(.horizontal)
                
                Spacer(minLength: 500)
                
                Button(action: onSave, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
            .navigationTitle("Task-It: Add a To-Do ❗️ ")
        }
    }
    
    func onSave(){
        todoListViewModel.addTodo(title: text)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView {
        AddTodoView()
    }
    .environmentObject(TodoListViewModel())

}
