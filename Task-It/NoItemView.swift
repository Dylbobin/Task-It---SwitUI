//
//  NoItemView.swift
//  Task-It
//
//
//

import SwiftUI

struct NoItemView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                Text("There Are No Tasks!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                Text("Click on the Add Button to add your tasks.")
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
    }
}

#Preview {
    NavigationView {
        NoItemView()
            .navigationTitle("Title")
    }
}
