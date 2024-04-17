//
//  ContentView.swift
//  Task-It
//
//  Created by Dylan Silva on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            taskViewerView()
                .tabItem {
                    Label("Tasks", systemImage: "tray.full.fill")
                }
                .tag(0)
            createTaskView()
                .tabItem {
                    Label("Task-It", systemImage: "square.and.pencil")
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
