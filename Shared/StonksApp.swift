//
//  StonksApp.swift
//  Shared
//
//  Created by Mayank Gupta on 22/05/21.
//

import SwiftUI

@main
struct StonksApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            CoursesView()
        }
    }
}
