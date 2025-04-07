//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Joel Lacerda on 13/03/25.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
