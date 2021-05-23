//
//  AppDelegate.swift
//  Stonks (iOS)
//
//  Created by Mayank Gupta on 23/05/21.
//

import Foundation
import UIKit
import Firebase


// no changes in your AppDelegate class
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
