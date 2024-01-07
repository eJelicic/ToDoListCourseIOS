//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Eugen Jelicic on 29.12.2023..
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
