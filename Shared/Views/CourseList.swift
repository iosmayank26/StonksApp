//
//  CourseList.swift
//  Stonks
//
//  Created by Mayank Gupta on 23/05/21.
//

import SwiftUI

struct CourseList: View {
    
    // MARK: - Main View
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #endif
    }
    var content: some View {
        List(courseRowModel) { item in
            CourseRow(item: item)
        }
        .navigationTitle("Trending")
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
