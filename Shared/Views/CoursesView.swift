//
//  CoursesView.swift
//  Stonks
//
//  Created by Mayank Gupta on 22/05/21.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false
    @Namespace var namespace
    @State var selectedItem: CourseModel? = nil
    @State var isDisabled = false
    var lazyVMin: CourseModel = courses[0]
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    
    // MARK: - Main View
    var body: some View {
        let defaults = UserDefaults.standard
        let loggedIn = defaults.bool(forKey: "isLogged")
        if loggedIn {
            ZStack {
                #if os(iOS)
                if horizontalSizeClass == .compact {
                    tabBar
                } else {
                    sideBar
                }
                fullContent
                    .background(VisualEffectBlur()).edgesIgnoringSafeArea(.all)
                #endif
            }
        } else {
            LoginView()
        }
    }
    
    // MARK: - Initial Content
    var content: some View {
        ScrollView {
            VStack(spacing: 0) {
                LazyVGrid(
                    columns: [
                        GridItem(.adaptive(minimum: 160), spacing: 16)],
                    spacing: 16
                ) {
                    ForEach(courses) { item in
                        VStack {
                            CourseItem(course: item)
                                .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                                .frame(height: 200)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0)) {
                                        show.toggle()
                                        selectedItem = item
                                        isDisabled = true
                                    }
                                }
                                .disabled(isDisabled)
                        }
                        .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity)
                
                Text("Trending Investment Tips")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 240), spacing: 16)]) {
                    ForEach(courseRowModel) { item in
                        CourseRow(item: item)
                    }
                }
                .padding()
            }
        }
        .zIndex(1)
        .navigationTitle("Learn to invest")
    }
    
    // MARK: - Detail Content View
    @ViewBuilder
    var fullContent: some View {
        if let item = selectedItem {
            ZStack(alignment: .topTrailing) {
                CourseDetail(course: item, namespace: namespace)
                CloseButton()
                    .padding(16)
                    .padding(.top,18)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                            selectedItem = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                isDisabled = false
                            }
                        }
                    }
                
            }
            .zIndex(2)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
        }
    }
    
    var tabBar: some View {
        TabView {
            NavigationView {
                content
            }
            .tabItem {
                Image(systemName: "book.closed")
                Text("Course")
            }
            
            NavigationView {
                CourseList()
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Stocks in News")
            }
        }
    }
    
    var sideBar: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: content) {
                    Label("Course", systemImage: "book.closed")
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
            content
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
