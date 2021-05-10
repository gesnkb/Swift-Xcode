//
//  SandwichesApp.swift
//  Shared
//
//  Created by Scott Sanders on 4/27/21.
//

import SwiftUI

@main
struct SandwichesApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
