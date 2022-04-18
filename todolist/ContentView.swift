//
//  ContentView.swift
//  todolist
//
//  Created by Robert Simoes on 4/17/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \TodoList.title, ascending: true)],
          animation: .default)
    private var lists: FetchedResults<TodoList>

    var body: some View {
        NavigationView {
            ListView()
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}

struct ListView: View {
    // TODO: Lists
    // let lists: FetchedResults<TodoList>
    let lists: [TodoList] = []
    
    var body: some View {
        VStack {
            ForEach(lists, id: \.self) { l in
                HStack {
                    Text("title here")
                }.padding()
            }
        }
    }
}

struct MainView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \TodoItem.title, ascending: true)],
          animation: .default)
    private var items: FetchedResults<TodoItem>
    
    // TODO: currently selected
    var body: some View {
        VStack {
            Text("TODO")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

