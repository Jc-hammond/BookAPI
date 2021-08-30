//
//  BookAPIApp.swift
//  BookAPI
//
//  Created by Connor Hammond on 8/27/21.
//

import SwiftUI

@main
struct BookAPIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
