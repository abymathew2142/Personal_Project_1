//
//  ExpenseManagerApp.swift
//  ExpenseManager
//
//  Created by Aby Mathew on 24/10/24.
//

import SwiftUI

@main
struct ExpenseManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
