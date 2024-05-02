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
    @State var priority: String = "none"
    @State var date : Date = Date()
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here...", text: $text, axis: .vertical)
                    .frame(height: 5)
                    .lineLimit(3...8)
                    .padding(.all)
                
                Spacer(minLength: 500)
                
                HStack {
                    Text("Select a Priority: ")
                    Picker("Select the Priority", selection: $priority) {
                        //Text("none").tag("none")
                        Text("!").tag("low")
                        Text("!!").tag("medium")
                        Text("!!!").tag("high")
                    }
                    .pickerStyle(.segmented)
                }
                
                HStack {
                    Text("Select a Date: ")
                    DatePicker("", selection: $date, displayedComponents: [.date])
                }
                
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
        todoListViewModel.addTodo(title: text, priority: priority, date: date)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView {
        AddTodoView()
    }
    .environmentObject(TodoListViewModel())

}
