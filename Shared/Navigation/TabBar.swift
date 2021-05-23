//
//  TabBar.swift
//  Stonks
//
//  Created by Mayank Gupta on 23/05/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        let defaults = UserDefaults.standard
        let loggedIn = defaults.bool(forKey: "isLogged")
        if loggedIn {
            TabView {
                NavigationView {
                    CoursesView()
                }
                .tabItem {
                    Image(systemName: "book.closed")
                    Text("Courses")
                }
                
                NavigationView {
                    CourseList()
                }
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Stocks in News")
                }
            }
        } else {
            LoginView()
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
