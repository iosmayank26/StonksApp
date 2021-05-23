//
//  Sidebar.swift
//  Stonks
//
//  Created by Mayank Gupta on 22/05/21.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        let defaults = UserDefaults.standard
        let loggedIn = defaults.bool(forKey: "isLogged")
        if loggedIn {
            NavigationView {
                List {
                    NavigationLink(
                        destination: CoursesView()) {
                        Label("Courses", systemImage: "book.closed")
                    }
                    NavigationLink(
                        destination: CourseList()) {
                        Label("Stocks in News", systemImage: "list.bullet.rectangle")
                    }
                }
                .listStyle(SidebarListStyle())
                .navigationTitle("Learn")
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button(action: {}) {
                            Image(systemName: "person.crop.circle")
                        }
                    }
                }
                
                CoursesView()
            }
            
        } else {
            LoginView()
        }
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
