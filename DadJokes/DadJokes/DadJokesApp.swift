//
//  DadJokesApp.swift
//  DadJokes
//
//  Created by Aleksandar Filipov on 5/5/22.
//

import SwiftUI

@main
struct DadJokesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
