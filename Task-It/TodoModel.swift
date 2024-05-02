//
//  TodoModel.swift
//  Task-It
//
//
//

import Foundation

struct TodoModel: Identifiable, Codable {
    
    let id: String
    let title: String
    let isCompleted: Bool
    let priority : String
    let date : Date
    
    init(id: String = UUID().uuidString ,title: String, isCompleted: Bool, priority: String, date: Date) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
        self.priority = priority
        self.date = date
    }
    
    func updateCompletion() -> TodoModel {
        return TodoModel(id: id, title: title, isCompleted: !isCompleted, priority: priority, date: date)
    }
}
