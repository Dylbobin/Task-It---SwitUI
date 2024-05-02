import SwiftUI

struct ListRowView: View {
    let todo: TodoModel
    
    var body: some View {
        HStack {
            Text(todo.title)
                .lineLimit(1)
            
            Spacer()
            
            VStack {
                Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                    .foregroundColor(todo.isCompleted ? .green : .red)
            }
            
            switch todo.priority {
                case "low" :
                    Text("!  ")
                        .foregroundColor(.green)
                case "medium" :
                    Text("!! ")
                        .foregroundColor(.yellow)
                case "high" :
                    Text("!!!")
                        .foregroundColor(.red)
                default:
                    Text("   ")
            }
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}
