//
//  WordListApp.swift
//  WordList
//
//  Created by 後藤亜有 on 2026/05/15.
//

import SwiftUI
import SwiftData

@main
struct WordListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Word.self)
        }
    }
}
