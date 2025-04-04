//
//  SwiftUIMemoNeukkimApp.swift
//  SwiftUIMemoNeukkim
//
//  Created by SunMin Hong on 4/3/25.
//

import SwiftUI

@main
struct SwiftUIMemoNeukkimApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
          MainlistView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
