//
//  todolistApp.swift
//  todolist
//
//  Created by Robert Simoes on 4/17/22.
//

import SwiftUI

@main
struct todolistApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
